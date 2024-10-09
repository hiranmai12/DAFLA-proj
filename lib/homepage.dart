import 'package:flutter/material.dart';
import 'package:flutter_application_15/COI.dart';
import 'package:flutter_application_15/Divorce_laws.dart';
import 'package:flutter_application_15/chat_page.dart';
import 'package:flutter_application_15/fundamental_duties.dart';
import 'package:flutter_application_15/ias.dart';
import 'package:flutter_application_15/pdfpage.dart';
import 'package:flutter_application_15/privacypolicy.dart';
import 'package:flutter_application_15/sendfeed.dart';
import 'package:flutter_application_15/settings.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'contacts.dart';
import 'dashboard.dart';
import 'pdfpage.dart';

import 'mydrawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.chat_page;

  String userName = '';
  String userEmail = '';

  @override
  void initState() {
    super.initState();
    _fetchUserDetails();
  }

  Future<void> _fetchUserDetails() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      setState(() {
        userName = user.displayName ??
            ''; // Use displayName if available, or fallback to empty string
        userEmail = user.email ??
            ''; // Use email if available, or fallback to empty string
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.pdfpage) {
      container = HomePage1();
    } else if (currentPage == DrawerSections.coi) {
      container = HomePage2();
    } else if (currentPage == DrawerSections.divorce_laws) {
      container = HomePage3();
    } else if (currentPage == DrawerSections.fundamental_duties) {
      container = HomePage4();
    } else if (currentPage == DrawerSections.ias) {
      container = HomePage5();
    } else if (currentPage == DrawerSections.contacts) {
      container = ContactsPage();
    } else if (currentPage == DrawerSections.settings) {
      container = SettingsPage();
    } else if (currentPage == DrawerSections.privacy_policy) {
      container = PrivacyPolicyPage();
    } else if (currentPage == DrawerSections.send_feedback) {
      container = SendFeedbackPage();
    } else if (currentPage == DrawerSections.chat_page) {
      container = GeminiChatBot();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          "AI ASSISTANT TO KNOW YOUR RIGHTS",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
        ),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(userName: userName, userEmail: userEmail),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Rights of Children in Constitution", Icons.book,
              currentPage == DrawerSections.pdfpage ? true : false),
          Divider(),
          menuItem(2, "Constitution of india", Icons.book_sharp,
              currentPage == DrawerSections.coi ? true : false),
          Divider(),
          menuItem(3, "Divorce Laws", Icons.book,
              currentPage == DrawerSections.divorce_laws ? true : false),
          Divider(),
          menuItem(4, "Fundamental Duties part 1", Icons.book,
              currentPage == DrawerSections.fundamental_duties ? true : false),
          Divider(),
          menuItem(5, "Fundamental Duties part 2", Icons.book,
              currentPage == DrawerSections.ias ? true : false),
          Divider(),
          menuItem(6, "Lawyer profiles", Icons.people_alt_outlined,
              currentPage == DrawerSections.contacts ? true : false),
          Divider(),
          menuItem(7, "Settings", Icons.settings_outlined,
              currentPage == DrawerSections.settings ? true : false),
          Divider(),
          menuItem(8, "Privacy policy", Icons.privacy_tip_outlined,
              currentPage == DrawerSections.privacy_policy ? true : false),
          menuItem(9, "Send feedback", Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback ? true : false),
          menuItem(10, "Chatbot", Icons.chat_outlined,
              currentPage == DrawerSections.chat_page ? true : false)
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.pdfpage;
            } else if (id == 2) {
              currentPage = DrawerSections.coi;
            } else if (id == 3) {
              currentPage = DrawerSections.divorce_laws;
            } else if (id == 4) {
              currentPage = DrawerSections.fundamental_duties;
            } else if (id == 5) {
              currentPage = DrawerSections.ias;
            } else if (id == 6) {
              currentPage = DrawerSections.contacts;
            } else if (id == 7) {
              currentPage = DrawerSections.settings;
            } else if (id == 8) {
              currentPage = DrawerSections.privacy_policy;
            } else if (id == 9) {
              currentPage = DrawerSections.send_feedback;
            } else if (id == 10) {
              currentPage = DrawerSections.chat_page;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  pdfpage,
  coi,
  divorce_laws,
  fundamental_duties,
  ias,
  dashboard,
  contacts,

  settings,
  notifications,
  privacy_policy,
  send_feedback,
  chat_page
}

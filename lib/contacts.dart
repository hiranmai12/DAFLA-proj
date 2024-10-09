import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsPage extends StatelessWidget {
  final List<Map<String, String>> profiles = [
    {"Title": "Pooja Terwad - Startup Lawyer", "URL": "http://surl.li/bglybj"},
    {
      "Title": "Shubham Borkar",
      "URL": "http://surl.li/gtsfpu"
    },
    {
      "Title": "Advocate Narendra Burange",
      "URL":
          "http://surl.li/hsawbj"
    },
    {
      "Title": "Mrs.Sushila Ram Verma",
      "URL":
          "http://surl.li/adpysr "
    },
    {
      "Title": "Kiran Kirti",
      "URL": "http://surl.li/taorrl"
    },
    {
      "Title": "Avinash Tripathi",
      "URL":
          "http://surl.li/mklchp"
    },
    {
      "Title": "Girish Agarwal",
      "URL":
          "http://surl.li/cvbfev "
    },
    {
      "Title":
          "H.K. Chaturvedi - Advocate, Supreme Court of India",
      "URL":
          "http://surl.li/zhohyj"
    },
    {
      "Title": "Mohammed Asif Ali Khan Durrani",
      "URL":
          "http://surl.li/blkftc"
    },
    {
      "Title": "Menaka Guruswamy",
      "URL":
          "http://surl.li/bdqvoq "
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: profiles.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(20),
            child: ListTile(
              title: Text(profiles[index]['Title']!,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
              onTap: () {
                final Uri url = Uri.parse(profiles[index]['URL']!);
                _launchUrl(url);
              },
            ),
          );
        },
      ),
    );
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: ContactsPage(),
  ));
}

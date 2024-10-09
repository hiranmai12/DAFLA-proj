import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool valNotify1 = true;
  bool valNotify2 = false;
  bool valNotify3 = false;

  onChangeFunction1(bool newValue1) {
    setState(() {
      valNotify1 = newValue1;
    });
  }

  onChangeFunction2(bool newValue2) {
    setState(() {
      valNotify2 = newValue2;
    });
  }

  onChangeFunction3(bool newValue3) {
    setState(() {
      valNotify3 = newValue3;
    });
  }

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            //login and security
            SizedBox(height: 10),
            Row(
              children: [
                Icon(
                  Icons.settings,
                  color: Colors.brown,
                ),
                SizedBox(width: 10),
                Text("Settings",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              ],
            ),
            Divider(height: 20, thickness: 1),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Login and Security",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600])),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "loginandsecurity");
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ))
              ],
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("History",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600])),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "address");
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ))
              ],
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("More info",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600])),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "revieworders");
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ))
              ],
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Notifications",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600])),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ))
              ],
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Language",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600])),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "languages");
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ))
              ],
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Help",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600])),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "help");
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ))
              ],
            ),
            SizedBox(height: 10),

            buildNotificationOption(
                "Theme Dark", valNotify1, onChangeFunction1),
            // buildNotificationOption("Account Activity", valNotify2, onChangeFunction2),
            // buildNotificationOption("Op3", valNotify3, onChangeFunction3),
          ],
        ),
      ),
    );
  }

  Padding buildNotificationOption(
      String title, bool value, Function onChangeMethod) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600])),
          Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              activeColor: Colors.brown,
              trackColor: Colors.grey,
              value: true,
              onChanged: (bool newValue) {
                onChangeMethod(newValue);
              },
            ),
          )
        ],
      ),
    );
  }
}

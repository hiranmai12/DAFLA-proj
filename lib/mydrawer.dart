import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatelessWidget {
  final String userName;
  final String userEmail;

  const MyHeaderDrawer({
    Key? key,
    required this.userName,
    required this.userEmail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown,
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            //backgroundImage: AssetImage('assets/register.jpeg'), // Replace with your image asset
            backgroundImage: userName.isNotEmpty
                ? NetworkImage(
                    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3ADefault_pfp.jpg&psig=AOvVaw3hEBEvYoCgg0suR-N2XC5E&ust=1720688365616000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCOj3gv2NnIcDFQAAAAAdAAAAABAE')
                : AssetImage('assets/Default.jpg'),
          ),
          SizedBox(height: 10),
          Text(
            userName,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(height: 5),
          Text(
            userEmail,
            style: TextStyle(color: Colors.grey[200], fontSize: 14),
          ),
        ],
      ),
    );
  }
}

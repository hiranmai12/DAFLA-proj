import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatefulWidget {
  @override
  _PrivacyPolicyPageState createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy Policy"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Privacy Policy",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              "Last Updated: 27-08-2024",
              style: TextStyle(
                fontSize: 16.0,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              "Your privacy is important to us. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our mobile application (DIGITAL ASSISTANT FOR LEGAL AWARENESS). Please read this privacy policy carefully. If you do not agree with the terms of this privacy policy, please do not access the app.",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            _buildSectionTitle("1. Information We Collect"),
            Text(
              "We may collect information about you in a variety of ways. The information we may collect via the App includes:",
              style: TextStyle(fontSize: 16.0),
            ),
            _buildSubSectionTitle("Personal Data"),
            Text(
              "- Name\n- Email address\n- Contact information (phone number, address)\n- Profile information (photo, preferences)",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            _buildSubSectionTitle("Usage Data"),
            Text(
              "Information regarding your use of the App (log data, device information, IP address).",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            _buildSectionTitle("2. How We Use Your Information"),
            Text(
              "We use the information we collect from you in the following ways:",
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              "- To operate and improve our App\n- To personalize your experience\n- To communicate with you (for updates, support, marketing)\n- To provide customer service and support\n- To ensure the security of our App",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            _buildSectionTitle("3. Sharing Your Information"),
            Text(
              "We may share your information with third parties in the following circumstances:",
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              "- With service providers who assist in the operation of our app (e.g., cloud storage providers, analytics services)\n- When required by law, to protect the safety and rights of others",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            _buildSectionTitle("4. Security"),
            Text(
              "We take the security of your personal information seriously. While we implement appropriate measures to safeguard your data, no system is completely secure. We cannot guarantee the absolute security of your data.",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            _buildSectionTitle("5. Third-Party Links"),
            Text(
              "Our App may contain links to third-party websites or services. We are not responsible for the privacy practices or content of third-party websites.",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            _buildSectionTitle("6. Changes to This Privacy Policy"),
            Text(
              "We may update this Privacy Policy from time to time. Any changes will be posted in the App, and we encourage you to review this policy regularly.",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            _buildSectionTitle("7. Contact Us"),
            Text(
              "If you have any questions about this Privacy Policy, please contact us at:",
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              "Email: dafla@gmail.com ",
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildSubSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

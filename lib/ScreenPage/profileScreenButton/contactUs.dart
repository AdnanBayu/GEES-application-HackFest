import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  final String emailCompany = "email company";
  final String instagramCompany = "instagram company";
  final String websiteCompany = "website company";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 143, 174),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("for business inquiries you can contact us at:"),
            Text(emailCompany),
            Text(instagramCompany),
            Text(websiteCompany),
          ],
        ),
      ),
    );
  }
}
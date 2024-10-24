import 'package:flutter/material.dart';
import 'package:portfolio_app/common_app_bar.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(
        context,
        PageType.contact,
      ),
      body: Center(
        child: Text("Contact"),
      ),
    );
  }
}

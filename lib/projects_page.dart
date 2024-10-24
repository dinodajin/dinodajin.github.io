import 'package:flutter/material.dart';
import 'package:portfolio_app/common_app_bar.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(
        context,
        PageType.projects,
      ),
      body: Center(
        child: Text("Projects"),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:portfolio_app/contact_page.dart';
import 'package:portfolio_app/home_page.dart';
import 'package:portfolio_app/projects_page.dart';

void main() {
  usePathUrlStrategy();
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: (routeSettings) {
        final uri = Uri.parse(routeSettings.name ?? '/');
        final path = uri.path;
        Widget page;
        switch (path) {
          case "/":
            page = HomePage();
            break;
          case "/projects":
            page = ProjectsPage();
            break;
          case "/contact":
            page = ContactPage();
            break;
          default:
            return null;
        }
        return PageRouteBuilder(
          settings: routeSettings,
          pageBuilder: (_, __, ___) => page,
          transitionDuration: Duration(milliseconds: 300),
        );
      },
    );
  }
}

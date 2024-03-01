import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final String? pageName;
  final Color? backgroundColor;
  final Widget? body;

  const MainLayout({
    this.pageName,
    this.backgroundColor,
    this.body,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          pageName ?? '',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: backgroundColor,
      body: body,
    );
  }
}

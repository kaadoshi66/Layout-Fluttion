import 'package:flutter/material.dart';
import 'package:fluttion_layout/layout_page.dart';

void main() => runApp(const AppLayout());

class AppLayout extends StatelessWidget {
  const AppLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "AppLayout",
      home: Scaffold(body: Layout()),
    );
  }
}

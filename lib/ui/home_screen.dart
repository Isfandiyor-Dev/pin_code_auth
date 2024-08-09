import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[300],
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: Colors.teal[400],
      ),
    );
  }
}

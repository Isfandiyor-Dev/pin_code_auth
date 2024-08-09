import 'package:flutter/material.dart';
import 'package:pin_code_auth/ui/biometric/biometric_auth.dart';
import 'package:pin_code_auth/ui/pin_code/pin_code.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[100],
        body: const FractionallySizedBox(
          widthFactor: 1,
          // You can also checkout the [PinputBuilderExample]
          child: Center(child: AuthButton()),
        ),
      ),
    );
  }
}

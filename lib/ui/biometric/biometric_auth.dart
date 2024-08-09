import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class AuthButton extends StatefulWidget {
  const AuthButton({super.key});

  @override
  _AuthButtonState createState() => _AuthButtonState();
}

class _AuthButtonState extends State<AuthButton> {
  final LocalAuthentication auth = LocalAuthentication();

  Future<void> _authenticate() async {
    bool authenticated = false;
    try {
      authenticated = await auth.authenticate(
        localizedReason: 'Iltimos, identifikatsiyadan o\'ting',
        options: const AuthenticationOptions(
          biometricOnly: true,
        ),
      );
    } catch (e) {
      print(e);
    }

    if (authenticated) {
      print('Authentication successful');
    } else {
      print('Authentication failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _authenticate,
      child: const Text('Authenticate'),
    );
  }
}

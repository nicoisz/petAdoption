import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:petadoption/presentation/widgets/custom_imput_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Nicolas',
      'phone_number': '6549841',
      'email': 'nic@google.com',
      'password': '123456',
      'role': 'admin'
    };

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Transform.rotate(
                alignment: Alignment.center,
                angle: -75,
                child: const Icon(
                  Icons.pets,
                  size: 80.0,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

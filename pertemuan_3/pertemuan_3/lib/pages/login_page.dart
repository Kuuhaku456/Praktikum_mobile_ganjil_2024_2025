import 'package:flutter/material.dart';
import 'package:pertemuan_3/models/TextField.dart';
import 'package:pertemuan_3/models/password_field.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool obscureText = true;
  void _togglePasswordVisibility() {
    setState(() {
      obscureText = !obscureText; // Mengubah status visibility
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9FF97),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.only(top: 70),
              decoration: BoxDecoration(
                color: const Color(0xFFFFD18E),
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("assets/medical_logo.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MyTextField(
              controller: username,
              hintText: 'Masukkan Username Anda...',
              labelText: 'Username',
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MyPassWordField(
                controller: password,
                obsecure: obscureText,
                onvisibility: _togglePasswordVisibility),
          ),

        ],
      ),
    );
  }
}

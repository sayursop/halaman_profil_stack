import 'package:flutter/material.dart';
import 'package:halaman_profil_stack/login_screen.dart'; // Import file profil

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginScreen(), // Panggil halaman profil
    );
  }
}

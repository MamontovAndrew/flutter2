import 'package:flutter/material.dart';
import 'styles.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary, primary: AppColors.borderColor),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

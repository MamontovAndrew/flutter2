import 'package:flutter/material.dart';
import 'styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String login = "";
  String password = "";
  bool rememberMe = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Center(
          child: Text(
            "Авторизация",
            style: AppTextStyles.appBarTitle,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.medium),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: AppTextFieldStyles.loginFieldDecoration,
                onChanged: (value) {
                  setState(() {
                    login = value;
                  });
                },
              ),
              const SizedBox(height: AppPadding.small),
              TextFormField(
                obscureText: true,
                decoration: AppTextFieldStyles.passwordFieldDecoration,
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
              ),
              const SizedBox(height: AppPadding.small),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: rememberMe,
                    onChanged: (bool? value) {
                      setState(() {
                        rememberMe = value!;
                      });
                    },
                  ),
                  const Text("Запомнить меня"),
                ],
              ),
              const SizedBox(height: AppPadding.small),
              TextButton(
                style: AppButtonStyles.primaryButtonStyle(context),
                onPressed: () {
                },
                child: const Text("Вход", style: AppTextStyles.buttonText),
              ),
              const SizedBox(height: AppPadding.small),
              TextButton(
                style: AppButtonStyles.outlinedButtonStyle(context),
                onPressed: () {
                },
                child: const Text("Регистрация"),
              ),
              const SizedBox(height: AppPadding.small),
              const Text(
                "Восстановить пароль",
                style: AppTextStyles.forgotPassword,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

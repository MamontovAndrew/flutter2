import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Colors.blue;
  static const Color background = Colors.white;
  static const Color buttonText = Colors.white;
  static const Color hintText = Colors.grey;
  static const Color borderColor = Colors.blueAccent;
}

class AppTextStyles {
  static const TextStyle appBarTitle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
    color: AppColors.buttonText,
  );

  static const TextStyle forgotPassword = TextStyle(
    color: AppColors.hintText,
    fontSize: 14.0,
  );
}

class AppTextFieldStyles {
  static const InputDecoration loginFieldDecoration = InputDecoration(
    filled: true,
    hintText: "Логин",
    border: InputBorder.none,
    fillColor: Colors.white,
  );

  static const InputDecoration passwordFieldDecoration = InputDecoration(
    filled: true,
    hintText: "Пароль",
    border: InputBorder.none,
    fillColor: Colors.white,
  );
}

class AppButtonStyles {
  static ButtonStyle primaryButtonStyle(BuildContext context) {
    return TextButton.styleFrom(
      backgroundColor: Theme.of(context).primaryColor,
      foregroundColor: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.all(10),
      minimumSize: const Size(double.infinity, 0),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Theme.of(context).primaryColor),
        borderRadius: BorderRadius.zero,
      ),
    );
  }

  static ButtonStyle outlinedButtonStyle(BuildContext context) {
    return TextButton.styleFrom(
      padding: const EdgeInsets.all(10),
      minimumSize: const Size(double.infinity, 0),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Theme.of(context).primaryColor),
        borderRadius: BorderRadius.zero,
      ),
    );
  }
}

class AppPadding {
  static const double small = 8.0;
  static const double medium = 16.0;
  static const double large = 24.0;
}

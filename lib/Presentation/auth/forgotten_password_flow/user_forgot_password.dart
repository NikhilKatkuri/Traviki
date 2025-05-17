import 'package:flutter/material.dart';
import 'package:traviki/core/routes/app_routes.dart';
import 'package:traviki/core/theme/app_colors.dart';

class UserForgotPassword extends StatefulWidget {
  const UserForgotPassword({super.key});

  @override
  State<UserForgotPassword> createState() => _UserForgotPasswordState();
}

class _UserForgotPasswordState extends State<UserForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 32, 16, 40),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 44,
                  height: 40,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(EdgeInsets.zero),
                      side: WidgetStateProperty.all(
                        const BorderSide(color: AppColors.border, width: 1.5),
                      ),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      backgroundColor: WidgetStateProperty.all(
                        Colors.transparent,
                      ),
                    ),
                    child: const Icon(
                      Icons.chevron_left,
                      size: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Text(
                  "Forgot Password?",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(height: 8),
                Text(
                  "Don't worry! It occurs. Please enter the email address linked with your account.",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(height: 32),
                TextField(
                  onTapOutside: (event) => FocusScope.of(context).unfocus(),
                  decoration: InputDecoration(
                    label: Text("Enter your email"),
                    labelStyle: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.forgotpasswordUserCreatePassword,
                    );
                  },
                  child: Text("Send Code"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

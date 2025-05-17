import 'package:flutter/material.dart';
import 'package:traviki/core/routes/app_routes.dart';
import 'package:traviki/core/theme/app_colors.dart';

class UserCreatePassword extends StatefulWidget {
  const UserCreatePassword({super.key});

  @override
  State<UserCreatePassword> createState() => _UserCreatePasswordState();
}

class _UserCreatePasswordState extends State<UserCreatePassword> {
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
                  "Create new password",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(height: 8),
                Text(
                  "Your new password must be unique from those previously used.",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(height: 32),
                TextField(
                  onTapOutside: (event) => FocusScope.of(context).unfocus(),
                  decoration: InputDecoration(
                    label: Text("New Password"),
                    labelStyle: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 32),
                TextField(
                  onTapOutside: (event) => FocusScope.of(context).unfocus(),
                  decoration: InputDecoration(
                    label: Text("Confirm Password"),
                    labelStyle: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.userPasswordChangedSuccess,
                    );
                  },
                  child: Text("Reset Password"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

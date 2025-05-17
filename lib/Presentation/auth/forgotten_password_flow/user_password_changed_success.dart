import 'package:flutter/material.dart';
import 'package:traviki/core/images/app_images.dart';
import 'package:traviki/core/routes/app_routes.dart';

class UserPasswordChangedSuccess extends StatefulWidget {
  const UserPasswordChangedSuccess({super.key});

  @override
  State<UserPasswordChangedSuccess> createState() =>
      _UserPasswordChangedSuccessState();
}

class _UserPasswordChangedSuccessState extends State<UserPasswordChangedSuccess>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _scaleAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.bounceOut));

    _controller.forward(); // Start the animation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(36),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ScaleTransition(
                  scale: _scaleAnimation,
                  child: Image.asset(
                    AppImages.sticker,
                    width: 100,
                    height: 100,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  "Password Changed!",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Your password has been changed successfully.",
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 36),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      AppRoutes.login,
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Text("Back to Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

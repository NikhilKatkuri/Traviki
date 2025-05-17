import 'package:flutter/material.dart';
import 'package:traviki/Presentation/auth/welcome/app_welcome.dart';
import 'package:traviki/core/images/app_images.dart';

class AppSplash extends StatefulWidget {
  const AppSplash({super.key});

  @override
  State<AppSplash> createState() => _AppSplashState();
}

class _AppSplashState extends State<AppSplash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => AppWelcome()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.splashIcon, height: 120),
            const SizedBox(height: 16),
            Text("Traviki", style: Theme.of(context).textTheme.headlineLarge),
          ],
        ),
      ),
    );
  }
}

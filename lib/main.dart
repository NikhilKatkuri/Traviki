import 'package:flutter/material.dart'; 
import 'package:traviki/Presentation/splash/app_splash.dart';
import 'package:traviki/core/routes/app_routes.dart';
import 'package:traviki/core/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.authTheme,
      debugShowCheckedModeBanner: false,
      title: 'Traviki',
      home: const AppSplash(),
      initialRoute: AppRoutes.splash, 
      onGenerateRoute: AppRoutes.generateRoute,
    );
  } 
}

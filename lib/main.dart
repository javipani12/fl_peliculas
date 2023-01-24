import 'package:flutter/material.dart';
import 'package:fl_peliculas/screens/screens.dart';
import 'package:fl_peliculas/theme/app_themes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Damflix',
      initialRoute: 'home',
      routes: {
        'home':(context) => HomeScreen(),
        'details':(context) => DetailsScreen(),

      },
      theme: AppTheme.lightTheme,
    );
  }
}
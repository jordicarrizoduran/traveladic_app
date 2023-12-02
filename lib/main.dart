import 'package:flutter/material.dart';
import 'package:traveladic_app/styles/app_styles.dart';

import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travelàdic App',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            foregroundColor: Colors.white,
            backgroundColor: AppStyles.principal,
            centerTitle: true,
          )
      ),
      home: const Home(),
    );
  }
}



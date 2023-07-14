import 'package:flutter/material.dart';
import 'package:flutter_app_1/constants.dart';
import 'package:flutter_app_1/screens/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Electrical Store',
      theme: ThemeData(
        primaryColor:kPrimaryColor,
        hintColor:kPrimaryColor,
      ),
      // localizationsDelegates: [
      //   GlobalCupertinoLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      // ],
      home: HomeScreen(),
    );
  }
}

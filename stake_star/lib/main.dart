import 'package:flutter/material.dart';
import 'package:stake_star/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,//Color(0xff27326e)
        ),
      ),
      title: 'stake star',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

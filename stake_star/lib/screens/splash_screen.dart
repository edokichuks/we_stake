import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stake_star/screens/sign_up.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  void waitMe() async {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const SignUp();
      }));
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    waitMe();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..forward();
    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.linear,
    );
    controller.addListener(() {
      setState(() {});
    });
    //  Timer(Duration(seconds: 3), ()=> Get.offNamed.getInitiial);This Those the function of waitMe();
    super.initState();
  }

  late Animation<double> animation;
  late AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/splash.jpg', //match enterance.jpg: background image
              ),
              fit: BoxFit.cover,
            ),
          ),
          constraints: const BoxConstraints.expand(),
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ScaleTransition(
                scale: controller,
                child: const CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/cup1.png',
                  ),
                  radius: 60,
                ),
              ),
            ],
          )),
    );
  }
}

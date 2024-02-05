import 'dart:async';

import 'package:flutter/material.dart';

import '../utils/colorz.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const routeName = '/splash-screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 4500),
    ()=>Navigator.pushNamed(context, '/login-screen'),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorz.screenBackground,
      body: Center(
        child: Image.asset("assets/videos/intro.gif"),
      ),
    );
  }
}
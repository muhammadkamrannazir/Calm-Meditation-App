// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:calm/botombar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Get.off(
        BottomBar(),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Image(
        width: double.infinity,
        fit: BoxFit.cover,
        image: AssetImage(
          'assets/splash.jpg',
        ),
      ),
    );
  }
}

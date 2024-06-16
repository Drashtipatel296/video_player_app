import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player_app/screens/home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreen(),),);
    });

    return Scaffold(
      backgroundColor: const Color(0xffFFFF33),
      body: Center(
        child: SizedBox(
          height: 200,
          width: 300,
          child: Image.asset('assets/img/logo.png',fit: BoxFit.cover,),
        ),
      ),
    );
  }
}

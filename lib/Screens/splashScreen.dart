import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'onBordingScreen/onBordingScreen.dart';
import 'onBordingScreen/onBordingmain.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 10),
            ()=> Get.to(()=>Onbordingmain()
                ,transition: Transition.zoom
            //     Navigator.pushReplacement(context,
            // MaterialPageRoute(builder:
            //     (context) => Onbordingmain()

        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Center(child: Image.asset("assets/image/mainlogo.png"))
              // Center(
              //   child: AnimatedTextKit(
              //     animatedTexts: [
              //       RotateAnimatedText("P"),
              //       RotateAnimatedText("E"),
              //       RotateAnimatedText("T"),
              //       RotateAnimatedText("T"),
              //       RotateAnimatedText("E"),
              //     ],
              //
              //   ),
              // )
            ],
          ),

    );
  }
}

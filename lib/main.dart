import 'package:flutter/material.dart';
import 'package:lab10_app_126/page/login.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PK SHOP',
      theme: ThemeData(),
      home: FlutterSplashScreen.gif(
        gifPath: 'assets/images/logo.gif',
        gifWidth: 720,
        gifHeight: 1280,
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 255, 255, 255),
          ],
        ),
        nextScreen: const LoginScreen(),
        duration: const Duration(milliseconds: 6000),
        onInit: () async {
          // debugPrint("onInit");
        },
        onEnd: () async {
          // debugPrint("onEnd 1");
        },
      ),

      // home: FlutterSplashScreen.scale(
      //     gradient: const LinearGradient(
      //       begin: Alignment.topCenter,
      //       end: Alignment.bottomCenter,
      //       colors: [
      //         Colors.lightBlue,
      //         Colors.blue,
      //       ],
      //     ),
      //     childWidget: SizedBox(
      //       height: 100,
      //       child: Image.asset("assets/images/logo-pkshop.png"),
      //     ),
      //     duration: const Duration(milliseconds: 2000),
      //     animationDuration: const Duration(milliseconds: 1000),
      //     onAnimationEnd: () => debugPrint("On Scale End"),
      //     nextScreen: const LoginScreen(),
      //   ),
    );
  }
}

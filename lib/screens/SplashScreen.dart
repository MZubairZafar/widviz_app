import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:widviz/screens/MainScreen.dart';
class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen(
      duration:  const Duration(milliseconds: 2000),
      nextScreen:  const MainPage(),
      backgroundColor: Colors.white,
      splashScreenBody: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            const Text(
              "Custom Splash",
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
            const Spacer(),
            SizedBox(
              width: 200,
              child: Image.asset('assets/flutter.png'),
            ),
            const Spacer(),
            const Text(
              "Flutter is Love",
              style: TextStyle(color: Colors.pink, fontSize: 20),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}

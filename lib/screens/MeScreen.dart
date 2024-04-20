import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/colors.dart';

class MeScreen extends StatelessWidget {
  const MeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg.jpg'), fit: BoxFit.cover),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'WidWiz',
              style: TextStyle(
                fontSize: 37,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Text(
              'Connect with global creators',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 50,
              width: 300,
              child: FloatingActionButton.extended(
                  backgroundColor: buttonColor,
                  onPressed: () {},
                  label: const Text(
                    'Create an Account',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
            ),
            const SizedBox(height: 10),
            const Text(
              'OR',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(height: 10),
            Container(
              height: 50,
              width: 300,
              child: FloatingActionButton.extended(
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  label: const Row(
                    children: [
                      Image(
                        image: AssetImage('assets/Icons/google 2.png'),
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Continue with Google',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 300,
              child: FloatingActionButton.extended(
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  label: const Row(
                    children: [
                      Image(
                        image: AssetImage('assets/Icons/apple.png'),
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Continue with Apple',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 110,
            ),
            const Text(
              'I have read and accept the WidWiz',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            GestureDetector(
              onTap: () {
                print('Terms of Services and Privacy policy Clicked');
              },
              child: const Text(
                'Terms of Service and Policy',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an Account?',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                GestureDetector(
                  onTap: (){
                    print('Sign in with google clicked');
                  },
                  child: const Text('Sign in with email',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

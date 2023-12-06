import 'package:flutter/material.dart';
import 'package:quiz_app_api/colors/colors.dart';
import 'package:quiz_app_api/view/quiz_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Container(
        color: Appcolors.backgroundColor,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.25,
            ),
            Image.asset(
              'assets/logo.png',
              height: 300,
              fit: BoxFit.cover,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QuizScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Appcolors.startButtonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 20,
                ),
              ),
              child: const Text('Start Quiz'),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Text(
                    'Powered By',
                    style: TextStyle(color: Appcolors.textColor),
                  ),
                  Text(
                    'www.artificia.com',
                    style: TextStyle(
                        color: Appcolors.textColor,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.06,
            )
          ],
        ),
      ),
    );
  }
}

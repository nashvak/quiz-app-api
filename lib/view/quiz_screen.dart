import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:quiz_app_api/colors/colors.dart';
import 'package:quiz_app_api/controller/controller.dart';
import 'package:quiz_app_api/view/result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  DataController dataController = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 100,
            ),
            LinearPercentIndicator(
              lineHeight: 30,
              percent: 0.5,
              barRadius: const Radius.circular(20),
              progressColor: const Color(0xFFC353D6),
              backgroundColor: const Color(0xFF6C2677),
              center: const Text(
                '40',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'What is Flutter?',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const AnswerButton(
              title: "1.A programming language",
            ),
            const SizedBox(
              height: 10,
            ),
            const AnswerButton(
              title: "2.A mobile development framework",
            ),
            const SizedBox(
              height: 10,
            ),
            const AnswerButton(
              title: "3.An operating system",
            ),
            const SizedBox(
              height: 10,
            ),
            const AnswerButton(
              title: "4.A cloud computing service",
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                GetBuilder<DataController>(
                  builder: (controller) {
                    return Visibility(
                      visible: controller.visibility,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          foregroundColor: Appcolors.backgroundColor,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ResultScreen(),
                            ),
                          );
                          controller.visibility = false;
                        },
                        child: const Text(
                          'Next',
                          style: TextStyle(
                              color: Color(0xFF481450),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    final dataController = Get.put(DataController());
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        foregroundColor: Colors.white,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {
        dataController.changeVisibility();
      },
      child: Text(
        title,
        textAlign: TextAlign.start,
      ),
    );
  }
}

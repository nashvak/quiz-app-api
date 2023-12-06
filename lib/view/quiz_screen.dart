import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:quiz_app_api/colors/colors.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
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
              barRadius: Radius.circular(20),
              progressColor: Color(0xFFC353D6),
              backgroundColor: Color(0xFF6C2677),
              center: Text(
                '40',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            const Text(
              'Which Plant in our system is know as the Red Plant?',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const AnswerButton(
              title: "1.Alexander Graham",
            ),
            const AnswerButton(
              title: "2.Alexander Fleming",
            ),
            const AnswerButton(
              title: "1.Alexander Graham",
            ),
            const AnswerButton(
              title: "2.Alexander Fleming",
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Visibility(
                  visible: true,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      foregroundColor: Appcolors.backgroundColor,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Next',
                      style: TextStyle(
                          color: Color(0xFF481450),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
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
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        foregroundColor: Colors.white,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {},
      child: Text(
        title,
        textAlign: TextAlign.start,
      ),
    );
  }
}

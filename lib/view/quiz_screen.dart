import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [Text('Which Plant in our system is know as the Red Plant?')],
      ),
    );
  }
}

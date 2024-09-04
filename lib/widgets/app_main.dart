import 'package:bmi_calculator/widgets/app_button.dart';
import 'package:bmi_calculator/widgets/middle_row.dart';
import 'package:bmi_calculator/widgets/top_row.dart';
import 'package:bmi_calculator/widgets/bottom_row.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() {
    return _MainScreen();
  }
}

class _MainScreen extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/logo/logo_dark.png',
              width: 20,
              height: 20,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text("BMI Calculator"),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TopRow(),
            const MiddleRow(),
            const BottomRow(),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 85,
              child: AppButton(
                  action: () {},
                  buttonIcon: const Icon(Icons.repeat_rounded),
                  label: "Calculate"),
            ),
          ],
        ),
      ),
    );
  }
}

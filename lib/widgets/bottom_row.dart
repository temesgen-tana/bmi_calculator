import 'package:flutter/material.dart';
import 'package:animated_flip_counter/animated_flip_counter.dart';

class BottomRow extends StatefulWidget {
  const BottomRow({super.key});
  @override
  State<BottomRow> createState() {
    return _BottomRow();
  }
}

class _BottomRow extends State<BottomRow> {
  int age = 24;
  int weight = 65;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            child: SizedBox(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text('Weight'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton.filled(
                        onPressed: () {
                          setState(() {
                            if (weight > 1) {
                              weight--;
                            }
                            return;
                          });
                        },
                        icon: const Icon(Icons.remove),
                      ),
                      AnimatedFlipCounter(
                        value: weight,
                        duration: const Duration(milliseconds: 500),
                        textStyle: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton.filled(
                        onPressed: () {
                          setState(() {
                            if (weight >= 1) {
                              weight++;
                            }
                            return;
                          });
                        },
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                  const Text(
                    'Kg',
                    style: TextStyle(
                      color: Color(0xFF818181),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Card(
            child: SizedBox(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text('Age'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton.filled(
                        onPressed: () {
                          setState(() {
                            if (age > 2) {
                              age--;
                            }
                            return;
                          });
                        },
                        icon: const Icon(Icons.remove),
                      ),
                      AnimatedFlipCounter(
                        value: age,
                        duration: const Duration(milliseconds: 500),
                        textStyle: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton.filled(
                        onPressed: () {
                          setState(() {
                            if (age >= 2) {
                              age++;
                            }
                            return;
                          });
                        },
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                  const Text(
                    'Year',
                    style: TextStyle(
                      color: Color(0xFF818181),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

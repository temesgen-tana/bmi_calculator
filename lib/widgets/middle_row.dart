import 'package:flutter/material.dart';

class MiddleRow extends StatefulWidget {
  const MiddleRow({super.key});

  @override
  State<MiddleRow> createState() {
    return _MiddleRow();
  }
}

class _MiddleRow extends State<MiddleRow> {
  List<bool> isSelected = [false, false];
  double _height = 180;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Height'),
                  ToggleButtons(
                    onPressed: (int index) {
                      setState(() {
                        for (int i = 0; i < isSelected.length; i++) {
                          // If the button at index `i` is the one pressed, set it to true.
                          // Otherwise, set it to false.
                          isSelected[i] = i == index;
                          // Execute different functions depending on the button index
                        }
                      });
                    },
                    isSelected: isSelected,
                    children: const [
                      Text('In'),
                      Text('Cm'),
                    ],
                  )
                ],
              ),
              Text(
                _height.round().toString(),
                style:
                    const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
              Slider(
                value: _height,
                min: 100,
                max: 250,
                divisions: 70,
                onChanged: (double newValue) {
                  setState(() {
                    _height = newValue;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

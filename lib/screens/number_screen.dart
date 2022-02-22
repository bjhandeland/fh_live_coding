import 'package:flutter/material.dart';

/// Should add 0 to first row, 1 to second tow, 2 to third, and so on.
///
/// Example:
/// 0             0             0
/// 0             1             2
/// 0 --> tap --> 2 --> tap --> 4 --> ...
/// 0             3             6
/// 0             4             8
class NumberScreen extends StatefulWidget {
  const NumberScreen({Key? key}) : super(key: key);

  @override
  _NumberScreenState createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  final List<int> _numbers = <int>[0, 0, 0, 0, 0];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const SizedBox(height: 20.0),

        const Text(
          'Number',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 20.0),

        // Show the list of numbers.
        for (int number in _numbers) Text(number.toString()),

        const SizedBox(height: 20.0),

        ElevatedButton(
          child: const Text('do not dare'),
          onPressed: _onTap,
        ),
      ],
    );
  }

  void _onTap() {
    for (int i = 0; i < 4; i++) {
      _numbers[i] += i;
    }
  }
}

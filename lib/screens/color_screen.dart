import 'dart:math';

import 'package:flutter/material.dart';

/// This screen does not work as intended.
///
/// Should put [ColorWidget] on top of column and remove bottom [ColorWidget] from column.
///
/// Example:
/// RED                MAUVE             VENICE PINK
/// GREEN              RED               MAUVE
/// BLUE   --> tap --> GREEN --> tap --> RED --> ...
/// BROWN              BLUE              GREEN
/// PURPLE             BROWN             BLUE
class ColorScreen extends StatefulWidget {
  const ColorScreen({Key? key}) : super(key: key);

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  List<Widget> _colorWidgets = <Widget>[];

  @override
  void initState() {
    super.initState();

    // Create list of first 5 colors.
    _colorWidgets = <Widget>[
      const ColorWidget(),
      const ColorWidget(),
      const ColorWidget(),
      const ColorWidget(),
      const ColorWidget(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const SizedBox(height: 20.0),

        const Text(
          'Color',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 20.0),

        // Show list of colors.
        for (Widget colorWidget in _colorWidgets) colorWidget,

        const SizedBox(height: 20.0),

        ElevatedButton(
          onPressed: _onTap,
          child: const Text('do not dare'),
        ),
      ],
    );
  }

  // Removes ColorWidget from bottom of list and
  // inserts a new ColorWidget on top.
  void _onTap() {
    _colorWidgets.removeLast();
    _colorWidgets.insert(0, const ColorWidget());
    setState(() {});
  }
}

// --------------------------------------------------------

class ColorWidget extends StatefulWidget {
  const ColorWidget({Key? key}) : super(key: key);

  @override
  State<ColorWidget> createState() => _ColorWidgetState();
}

class _ColorWidgetState extends State<ColorWidget> {
  Color? color;

  @override
  void initState() {
    super.initState();

    // Generate random new color.
    final int r = Random().nextInt(256);
    final int g = Random().nextInt(256);
    final int b = Random().nextInt(256);

    color = Color.fromRGBO(r, g, b, 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.0,
      height: 20.0,
      color: color,
    );
  }
}

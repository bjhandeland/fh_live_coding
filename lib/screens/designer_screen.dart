import 'package:flutter/material.dart';

/// This screen does not work as intended.
///
/// Should show a list of games, but there seem to be
/// some rendering issues.
///
/// Refer to the [assets/designer.png] picture to see
/// what the screen is supposed to look like.
class DesignerScreen extends StatefulWidget {
  const DesignerScreen({Key? key}) : super(key: key);

  @override
  _DesignerScreenState createState() => _DesignerScreenState();
}

class _DesignerScreenState extends State<DesignerScreen> {
  List<String> gameNames = <String>[
    'The Gallerist',
    'On Mars',
    'Lisboa',
    'Kanban',
    'Vinhos',
    'Escape Plan',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Image.network(
              'https://cf.geekdo-images.com/1uyXWwYFCH_gTi30zYLalw__imagepage/img/daQeWVetK37BKZ4LjMKKvsjqcoo=/fit-in/900x600/filters:no_upscale():strip_icc()/pic3546633.jpg',
            ),
            const SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text('Vital Lacerda', style: TextStyle(fontSize: 20.0)),
                Text(
                  'Born in Lisbon, Vital Lacerda has a masters degree in Marketing and Advertising. After working in advertising agencies for almost 15 years as an art director, and later as the creative director of his own agency, he decided to try his luck as a freelance graphic designer in 2006.',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            )
          ],
        ),
        ListView.builder(
          itemCount: gameNames.length,
          itemBuilder: (BuildContext context, int i) {
            final String gameName = gameNames[i];

            return ListTile(
              title: Text(gameName),
            );
          },
        )
      ],
    );
  }
}

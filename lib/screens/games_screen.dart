import 'package:flutter/material.dart';

/// Should show a list of games.
///
/// Look at the code and comment on what you see.
/// Is there anything you would change?
///
/// Later: clicking on "more" should take you to
/// a "detail" page about a game. Use Hero widget
/// on the picture for transition.
class GamesScreen extends StatelessWidget {
  const GamesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.lightBlueAccent,
            border: Border(
              bottom: BorderSide(color: Colors.lightBlue),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                'Top 6 Board Games',
                style: TextStyle(fontSize: 16.0),
              ),
              Text(
                'According to Board Game Geek',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
        Card(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Image.asset('assets/images/gloomhaven.jpg'),
                title: const Text('Gloomhaven'),
                subtitle:
                    const Text('Vanquish monsters with strategic cardplay. Fulfill your quest to leave your legacy!'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('More'),
                    onPressed: () {/* ... */},
                  ),
                ],
              ),
            ],
          ),
        ),
        Card(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Image.asset('assets/images/pandemic.png'),
                title: const Text('Pandemic Legacy: Season 1'),
                subtitle: const Text('Mutating diseases are spreading around the world - can your team save humanity?'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('More'),
                    onPressed: () {/* ... */},
                  ),
                ],
              ),
            ],
          ),
        ),
        Card(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Image.asset('assets/images/brass.jpg'),
                title: const Text('Brass: Birmingham'),
                subtitle:
                    const Text('Build networks, grow industries, and navigate the world of the Industrial Revolution.'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('More'),
                    onPressed: () {/* ... */},
                  ),
                ],
              ),
            ],
          ),
        ),
        Card(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Image.asset('assets/images/terraforming.jpg'),
                title: const Text('Terraforming Mars'),
                subtitle: const Text('Compete with rival CEOs to make Mars habitable and build your corporate empire.'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('More'),
                    onPressed: () {/* ... */},
                  ),
                ],
              ),
            ],
          ),
        ),
        Card(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Image.asset('assets/images/twilight.jpg'),
                title: const Text('Twilight Imperium: Fourth Edition'),
                subtitle:
                    const Text('Build an intergalactic empire through trade, research, conquest and grand politics.'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('More'),
                    onPressed: () {/* ... */},
                  ),
                ],
              ),
            ],
          ),
        ),
        Card(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Image.asset('assets/images/dune.jpg'),
                title: const Text('Dune'),
                subtitle:
                    const Text('Wildly different factions vie for control of a planet through alliance and treachery.'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('More'),
                    onPressed: () {/* ... */},
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.lightBlueAccent,
            border: Border(
              bottom: BorderSide(color: Colors.lightBlue),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    'For more games, see',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    'https://boardgamegeek.com/browse/boardgame',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              const Icon(Icons.arrow_forward),
            ],
          ),
        ),
      ],
    );
  }
}

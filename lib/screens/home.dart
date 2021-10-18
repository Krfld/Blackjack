// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import '../.imports.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Blackjack'),
          Column(
            children: [
              Text('New Game'),
              Text('Continue'),
            ],
          ),
        ],
      ),
    );
  }
}

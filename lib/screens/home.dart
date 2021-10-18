// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import '../.imports.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text('Blackjack'),
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    child: Text('New Game'),
                    onPressed: () => null,
                  ),
                  Text('Continue'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

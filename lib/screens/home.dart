// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';

import '../.imports.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                'Blackjack',
                style: textTheme.headline3,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.all(32),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8)))),
                    child: Text('New Game', style: textTheme.headline6),
                    onPressed: () => null,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

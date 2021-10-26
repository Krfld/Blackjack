// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../.imports.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Blackjack', style: textTheme.headline2),
            TextButton(
              style: TextButton.styleFrom(
                splashFactory: NoSplash.splashFactory,
                padding: EdgeInsets.all(32),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
              ),
              child: Text('New Game', style: textTheme.headline4),
              onPressed: () => Navigator.pushNamed(context, '//!'),
            ),
          ],
        ),
      ),
    );
  }
}

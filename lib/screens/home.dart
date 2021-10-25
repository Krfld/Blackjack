// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

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
                style: textTheme.headline2,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Card(
                child: ExpansionTile(
                  leading: Text('Icon'),
                  tilePadding: EdgeInsets.all(16),
                  title: Text('Xiu'),
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        splashFactory: InkRipple.splashFactory,
                        padding: EdgeInsets.all(32),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
                      ),
                      child: Text('Continue', style: textTheme.headline4),
                      onPressed: () => app.msg('Click', context: context),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: TextButton(
                style: TextButton.styleFrom(
                  splashFactory: InkRipple.splashFactory,
                  padding: EdgeInsets.all(32),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                ),
                child: Text('New Game', style: textTheme.headline4),
                onPressed: () => app.msg('Click', context: context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

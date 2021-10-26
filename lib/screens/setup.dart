// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../.imports.dart';

class Setup extends StatelessWidget {
  const Setup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                splashFactory: NoSplash.splashFactory,
                padding: EdgeInsets.all(32),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(64))),
              ),
              child: Text('Ready', style: textTheme.headline5),
              onPressed: () => app.msg('Click'),
            ),
          ],
        ),
      ),
    );
  }
}

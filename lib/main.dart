// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import './.imports.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blackjack',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        brightness: Brightness.dark,
      ),
      routes: {
        'Home': (context) => Home(),
      },
      home: Home(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        iconTheme: IconThemeData(
          color: Colors.red,
        ),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: IconTheme(
          data: IconThemeData(color: Colors.black),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              HeroIcon(HeroIcons.arrowLeft),
              HeroIcon(HeroIcons.arrowRight),
              HeroIcon(HeroIcons.calendar),
              HeroIcon(HeroIcons.arrowLeft, solid: true),
              HeroIcon(HeroIcons.arrowRight, solid: true),
              HeroIcon(HeroIcons.calendar, solid: true),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        iconTheme: const IconThemeData(
          color: Colors.red,
        ),
      ),
      home: const HeroIconTheme(
        // .outline is the default style anyhow, but this is how you can change
        // the default style of all HeroIcons in your app.
        style: HeroIconStyle.outline,
        child: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryButtonStyle = ButtonStyle(
      foregroundColor: const WidgetStatePropertyAll(
        Colors.blue,
      ),
      iconColor: const WidgetStatePropertyAll(
        Colors.red,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('HeroIcons'),
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
              HeroIcon(HeroIcons.arrowLeft, style: HeroIconStyle.solid),
              HeroIcon(HeroIcons.arrowRight, style: HeroIconStyle.solid),
              HeroIcon(HeroIcons.calendar, style: HeroIconStyle.solid),
              IconTheme(
                data: IconThemeData(
                  size: 40,
                  color: Colors.blue,
                ),
                child: HeroIcon(
                  HeroIcons.calendar,
                  style: HeroIconStyle.outline,
                ),
              ),
              IconTheme(
                data: IconThemeData(
                  size: 40,
                  color: Colors.red,
                ),
                child: HeroIcon(HeroIcons.calendar, style: HeroIconStyle.solid),
              ),
              IconTheme(
                data: IconThemeData(
                  size: 40,
                  color: Colors.blue,
                ),
                child: HeroIcon(HeroIcons.calendar, style: HeroIconStyle.mini),
              ),
              OutlinedButton(
                style: primaryButtonStyle,
                onPressed: () {
                  debugPrint('[HomeScreen.build] Clicked');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    HeroIcon(
                      HeroIcons.plus,
                      size: 20,
                      style: HeroIconStyle.mini,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Button',
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

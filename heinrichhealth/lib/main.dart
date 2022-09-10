import 'package:flutter/material.dart';
import 'package:heinrichhealth/Nutrition/nutrition_main.dart';
import 'package:heinrichhealth/Training/training_main.dart';

const Color primaryColor = Color(0x561ab9);
const Color accentColor = Color(0xB6A4C7);
const TextStyle textStyle = TextStyle(color: Colors.white);
const TextStyle textStyleSubItems = TextStyle(color: Colors.grey);

void main() {
  runApp(const HeinrichMain());
}

class HeinrichMain extends StatelessWidget {
  const HeinrichMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HeinrichHealth',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      initialRoute: "/Training",
      routes: {
        "/Nutrition": (context) => const NutritionPage(),
        "/Training": (context) => const TrainingPage(),
      },
    );
  }
}

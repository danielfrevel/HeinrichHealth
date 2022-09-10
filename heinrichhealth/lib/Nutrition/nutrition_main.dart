import 'package:flutter/material.dart';
import 'package:heinrichhealth/Shared/heinrich_drawer.dart';

class NutritionPage extends StatefulWidget {
  const NutritionPage({Key? key}) : super(key: key);
  @override
  State<NutritionPage> createState() => _NutritionPageState();
}

class _NutritionPageState extends State<NutritionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ernährungsplanung")),
      drawer: const HeinrichDrawer(),
    );
  }
}

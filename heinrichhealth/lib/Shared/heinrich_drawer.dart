import 'package:flutter/material.dart';
import 'package:heinrichhealth/Training/training_main.dart';

class HeinrichDrawer extends StatelessWidget {
  const HeinrichDrawer({Key? key}) : super(key: key);

  @override
  Drawer build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(child: Text("HeinrichMenu")),
          ListTile(
              title: const Text('Trainingsplanung'),
              leading: const Icon(Icons.fitness_center),
              onTap: () {
                Navigator.pushReplacementNamed(context, "/Training");
              }),
          ListTile(
            title: const Text('Ernährungsplanung'),
            leading: const Icon(Icons.monitor_weight),
            onTap: () {
              Navigator.pushReplacementNamed(context, "/Nutrition");
            },
          ),
        ],
      ),
    );
  }
}

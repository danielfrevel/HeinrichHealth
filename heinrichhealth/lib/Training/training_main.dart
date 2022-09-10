import 'package:flutter/material.dart';
import 'package:heinrichhealth/Services/session_service.dart';
import 'package:heinrichhealth/Shared/heinrich_drawer.dart';
import 'package:heinrichhealth/main.dart';

class TrainingPage extends StatelessWidget {
  const TrainingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HeinrichDrawer(),
      body: Container(color: accentColor, child: const HeinrichHistory()),
    );
  }
}

class HeinrichHistory extends StatefulWidget {
  const HeinrichHistory({Key? key}) : super(key: key);

  @override
  State<HeinrichHistory> createState() => _HeinrichHistoryState();
}

class _HeinrichHistoryState extends State<HeinrichHistory> {
  @override
  ListView build(BuildContext context) {
    final service = SessionService();
    final allSessions = service.getAllSessions();

    return ListView(
      children: allSessions.map((e) {
        return HeinrichSessionCard(
            workoutId: e.id ?? 0, sessionService: service);
      }).toList(),
    );
  }
}

class HeinrichSessionCard extends StatefulWidget {
  const HeinrichSessionCard(
      {Key? key, required this.workoutId, required this.sessionService})
      : super(key: key);
  final int workoutId;
  final SessionService sessionService;
  @override
  State<HeinrichSessionCard> createState() => _HeinrichSessionCardState();
}

class _HeinrichSessionCardState extends State<HeinrichSessionCard> {
  @override
  Widget build(BuildContext context) {
    var session = widget.sessionService.findSession(widget.workoutId);

    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            InkWell(
              child: ListTile(
                onTap: () {
                  // Navigator.push(
                  // context,
                  // MaterialPageRoute(
                  //   builder: (context) => DetailScreen(title: myController.text),
                  // )
                },
                leading: Icon(Icons.monitor_weight),
                title: Text(session.id.toString()),
                subtitle: Text(session.sessionDate.toString()),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//TRAINGSPLANUNG
//Header: Workouts
// Verlauf (ListView) -> kommt aus db
// Workout (Card / ListItem)
// Exercise (Rows / Excersize Item)

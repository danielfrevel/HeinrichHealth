import 'package:flutter/material.dart';
import 'package:heinrichhealth/Services/generated/HeinrichHealth.swagger.dart';
import 'package:heinrichhealth/Services/workout-service.dart';
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

class HeinrichCardDetails extends StatelessWidget {
  const HeinrichCardDetails(
      {super.key, required this.session, required this.workouts});

  // "Duration_minutes" INT,
  // "Session_date" DATE,

  // List view für workouts

  // WeightliftingSession.Name, Trainingsession.Session_date
  // for each exc
  // Excesize.Sets WeightliftingSet.Weight .Reps

  final List workouts;
  final TrainingsSession session;

  @override
  Widget build(BuildContext context) {
    return Container();
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
    TrainingsSession session =
        widget.sessionService.findSession(widget.workoutId);

    List workouts =
        widget.sessionService.getWorkoutsForSession(widget.workoutId);

    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            InkWell(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HeinrichCardDetails(
                            session = session, workouts = workouts)),
                  );
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

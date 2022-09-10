import 'package:heinrichhealth/Services/generated/HeinrichHealth.swagger.dart';
import '../config.dart';

class SessionService {
  List<TrainingsSession> _allSessions = [];

  SessionService() {
    // final api = HeinrichHealth.create(baseUrl: BASE_URL);
    // api
    //     .apiWeightTrainingGetTrainingsSessionsGet()
    //     .then((p) => {_allSessions = p});

    _allSessions = [
      new TrainingsSession(
          id: 1,
          durationMinutes: 10,
          sessionDate: new DateTime(2020),
          userID: 1),
      new TrainingsSession(
          id: 2,
          durationMinutes: 20,
          sessionDate: new DateTime.now(),
          userID: 1),
      new TrainingsSession(
          id: 3,
          durationMinutes: 10,
          sessionDate: new DateTime(2020),
          userID: 1),
      new TrainingsSession(
          id: 4,
          durationMinutes: 1010,
          sessionDate: new DateTime.now(),
          userID: 1)
    ];
  }

  List<TrainingsSession> getAllSessions() {
    return _allSessions;
  }

  TrainingsSession findSession(int id) {
    return _allSessions.where((element) => element.id == id).first;
  }
}

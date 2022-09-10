//Generated code

part of 'HeinrichHealth.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$HeinrichHealth extends HeinrichHealth {
  _$HeinrichHealth([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = HeinrichHealth;

  @override
  Future<Response<List<Login>>> _apiWeightTrainingGetLoginsGet() {
    final $url = '/api/WeightTraining/GetLogins';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<Login>, Login>($request);
  }

  @override
  Future<Response<List<HHUser>>> _apiWeightTrainingGetUsersGet() {
    final $url = '/api/WeightTraining/GetUsers';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<HHUser>, HHUser>($request);
  }

  @override
  Future<Response<List<TrainingsSession>>>
      _apiWeightTrainingGetTrainingsSessionsGet() {
    final $url = '/api/WeightTraining/GetTrainingsSessions';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<TrainingsSession>, TrainingsSession>($request);
  }
}

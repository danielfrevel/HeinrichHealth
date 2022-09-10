// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'package:chopper/chopper.dart' as chopper;

part 'HeinrichHealth.swagger.chopper.dart';
part 'HeinrichHealth.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class HeinrichHealth extends ChopperService {
  static HeinrichHealth create(
      {ChopperClient? client,
      Authenticator? authenticator,
      String? baseUrl,
      Iterable<dynamic>? interceptors}) {
    if (client != null) {
      return _$HeinrichHealth(client);
    }

    final newClient = ChopperClient(
        services: [_$HeinrichHealth()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? 'http://');
    return _$HeinrichHealth(newClient);
  }

  ///
  Future<chopper.Response<List<Login>>> apiWeightTrainingGetLoginsGet() {
    generatedMapping.putIfAbsent(Login, () => Login.fromJsonFactory);

    return _apiWeightTrainingGetLoginsGet();
  }

  ///
  @Get(path: '/api/WeightTraining/GetLogins')
  Future<chopper.Response<List<Login>>> _apiWeightTrainingGetLoginsGet();

  ///
  Future<chopper.Response<List<HHUser>>> apiWeightTrainingGetUsersGet() {
    generatedMapping.putIfAbsent(HHUser, () => HHUser.fromJsonFactory);

    return _apiWeightTrainingGetUsersGet();
  }

  ///
  @Get(path: '/api/WeightTraining/GetUsers')
  Future<chopper.Response<List<HHUser>>> _apiWeightTrainingGetUsersGet();

  ///
  Future<chopper.Response<List<TrainingsSession>>>
      apiWeightTrainingGetTrainingsSessionsGet() {
    generatedMapping.putIfAbsent(
        TrainingsSession, () => TrainingsSession.fromJsonFactory);

    return _apiWeightTrainingGetTrainingsSessionsGet();
  }

  ///
  @Get(path: '/api/WeightTraining/GetTrainingsSessions')
  Future<chopper.Response<List<TrainingsSession>>>
      _apiWeightTrainingGetTrainingsSessionsGet();
}

@JsonSerializable(explicitToJson: true)
class HHUser {
  HHUser({
    this.id,
    this.username,
    this.lastname,
    this.firstname,
    this.bodyweight,
    this.height,
    this.bmi,
    this.bodyfatPct,
    this.login,
  });

  factory HHUser.fromJson(Map<String, dynamic> json) => _$HHUserFromJson(json);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'username')
  final String? username;
  @JsonKey(name: 'lastname')
  final String? lastname;
  @JsonKey(name: 'firstname')
  final String? firstname;
  @JsonKey(name: 'bodyweight')
  final double? bodyweight;
  @JsonKey(name: 'height')
  final double? height;
  @JsonKey(name: 'bmi')
  final double? bmi;
  @JsonKey(name: 'bodyfat_pct')
  final double? bodyfatPct;
  @JsonKey(name: 'login')
  final int? login;
  static const fromJsonFactory = _$HHUserFromJson;
  static const toJsonFactory = _$HHUserToJson;
  Map<String, dynamic> toJson() => _$HHUserToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HHUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.bodyweight, bodyweight) ||
                const DeepCollectionEquality()
                    .equals(other.bodyweight, bodyweight)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.bmi, bmi) ||
                const DeepCollectionEquality().equals(other.bmi, bmi)) &&
            (identical(other.bodyfatPct, bodyfatPct) ||
                const DeepCollectionEquality()
                    .equals(other.bodyfatPct, bodyfatPct)) &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(bodyweight) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(bmi) ^
      const DeepCollectionEquality().hash(bodyfatPct) ^
      const DeepCollectionEquality().hash(login) ^
      runtimeType.hashCode;
}

extension $HHUserExtension on HHUser {
  HHUser copyWith(
      {int? id,
      String? username,
      String? lastname,
      String? firstname,
      double? bodyweight,
      double? height,
      double? bmi,
      double? bodyfatPct,
      int? login}) {
    return HHUser(
        id: id ?? this.id,
        username: username ?? this.username,
        lastname: lastname ?? this.lastname,
        firstname: firstname ?? this.firstname,
        bodyweight: bodyweight ?? this.bodyweight,
        height: height ?? this.height,
        bmi: bmi ?? this.bmi,
        bodyfatPct: bodyfatPct ?? this.bodyfatPct,
        login: login ?? this.login);
  }
}

extension $HHUserWrappedExtension on HHUser {
  HHUser copyWith(
      {Wrapped<int?>? id,
      Wrapped<String?>? username,
      Wrapped<String?>? lastname,
      Wrapped<String?>? firstname,
      Wrapped<double?>? bodyweight,
      Wrapped<double?>? height,
      Wrapped<double?>? bmi,
      Wrapped<double?>? bodyfatPct,
      Wrapped<int?>? login}) {
    return HHUser(
        id: (id != null ? id.value : this.id),
        username: (username != null ? username.value : this.username),
        lastname: (lastname != null ? lastname.value : this.lastname),
        firstname: (firstname != null ? firstname.value : this.firstname),
        bodyweight: (bodyweight != null ? bodyweight.value : this.bodyweight),
        height: (height != null ? height.value : this.height),
        bmi: (bmi != null ? bmi.value : this.bmi),
        bodyfatPct: (bodyfatPct != null ? bodyfatPct.value : this.bodyfatPct),
        login: (login != null ? login.value : this.login));
  }
}

@JsonSerializable(explicitToJson: true)
class Login {
  Login({
    this.id,
    this.email,
    this.password,
  });

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'password')
  final String? password;
  static const fromJsonFactory = _$LoginFromJson;
  static const toJsonFactory = _$LoginToJson;
  Map<String, dynamic> toJson() => _$LoginToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Login &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $LoginExtension on Login {
  Login copyWith({int? id, String? email, String? password}) {
    return Login(
        id: id ?? this.id,
        email: email ?? this.email,
        password: password ?? this.password);
  }
}

extension $LoginWrappedExtension on Login {
  Login copyWith(
      {Wrapped<int?>? id,
      Wrapped<String?>? email,
      Wrapped<String?>? password}) {
    return Login(
        id: (id != null ? id.value : this.id),
        email: (email != null ? email.value : this.email),
        password: (password != null ? password.value : this.password));
  }
}

@JsonSerializable(explicitToJson: true)
class TrainingsSession {
  TrainingsSession({
    this.id,
    this.durationMinutes,
    this.sessionDate,
    this.userID,
  });

  factory TrainingsSession.fromJson(Map<String, dynamic> json) =>
      _$TrainingsSessionFromJson(json);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'duration_minutes')
  final int? durationMinutes;
  @JsonKey(name: 'session_date')
  final DateTime? sessionDate;
  @JsonKey(name: 'userID')
  final int? userID;
  static const fromJsonFactory = _$TrainingsSessionFromJson;
  static const toJsonFactory = _$TrainingsSessionToJson;
  Map<String, dynamic> toJson() => _$TrainingsSessionToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrainingsSession &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.durationMinutes, durationMinutes) ||
                const DeepCollectionEquality()
                    .equals(other.durationMinutes, durationMinutes)) &&
            (identical(other.sessionDate, sessionDate) ||
                const DeepCollectionEquality()
                    .equals(other.sessionDate, sessionDate)) &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(durationMinutes) ^
      const DeepCollectionEquality().hash(sessionDate) ^
      const DeepCollectionEquality().hash(userID) ^
      runtimeType.hashCode;
}

extension $TrainingsSessionExtension on TrainingsSession {
  TrainingsSession copyWith(
      {int? id, int? durationMinutes, DateTime? sessionDate, int? userID}) {
    return TrainingsSession(
        id: id ?? this.id,
        durationMinutes: durationMinutes ?? this.durationMinutes,
        sessionDate: sessionDate ?? this.sessionDate,
        userID: userID ?? this.userID);
  }
}

extension $TrainingsSessionWrappedExtension on TrainingsSession {
  TrainingsSession copyWith(
      {Wrapped<int?>? id,
      Wrapped<int?>? durationMinutes,
      Wrapped<DateTime?>? sessionDate,
      Wrapped<int?>? userID}) {
    return TrainingsSession(
        id: (id != null ? id.value : this.id),
        durationMinutes: (durationMinutes != null
            ? durationMinutes.value
            : this.durationMinutes),
        sessionDate:
            (sessionDate != null ? sessionDate.value : this.sessionDate),
        userID: (userID != null ? userID.value : this.userID));
  }
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  chopper.Response<ResultType> convertResponse<ResultType, Item>(
      chopper.Response response) {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}

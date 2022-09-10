// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HeinrichHealth.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HHUser _$HHUserFromJson(Map<String, dynamic> json) => HHUser(
      id: json['id'] as int?,
      username: json['username'] as String?,
      lastname: json['lastname'] as String?,
      firstname: json['firstname'] as String?,
      bodyweight: (json['bodyweight'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      bmi: (json['bmi'] as num?)?.toDouble(),
      bodyfatPct: (json['bodyfat_pct'] as num?)?.toDouble(),
      login: json['login'] as int?,
    );

Map<String, dynamic> _$HHUserToJson(HHUser instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'lastname': instance.lastname,
      'firstname': instance.firstname,
      'bodyweight': instance.bodyweight,
      'height': instance.height,
      'bmi': instance.bmi,
      'bodyfat_pct': instance.bodyfatPct,
      'login': instance.login,
    };

Login _$LoginFromJson(Map<String, dynamic> json) => Login(
      id: json['id'] as int?,
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$LoginToJson(Login instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'password': instance.password,
    };

TrainingsSession _$TrainingsSessionFromJson(Map<String, dynamic> json) =>
    TrainingsSession(
      id: json['id'] as int?,
      durationMinutes: json['duration_minutes'] as int?,
      sessionDate: json['session_date'] == null
          ? null
          : DateTime.parse(json['session_date'] as String),
      userID: json['userID'] as int?,
    );

Map<String, dynamic> _$TrainingsSessionToJson(TrainingsSession instance) =>
    <String, dynamic>{
      'id': instance.id,
      'duration_minutes': instance.durationMinutes,
      'session_date': instance.sessionDate?.toIso8601String(),
      'userID': instance.userID,
    };

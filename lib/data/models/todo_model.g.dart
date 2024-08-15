// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoImpl _$$TodoImplFromJson(Map<String, dynamic> json) => _$TodoImpl(
      id: json['id'] as String,
      uid: json['uid'] as String,
      name: json['name'] as String,
      isDone: json['isDone'] as bool,
      dateTime: DateTime.parse(json['dateTime'] as String),
      isToday: json['isToday'] as bool,
      rate: (json['rate'] as num).toInt(),
    );

Map<String, dynamic> _$$TodoImplToJson(_$TodoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'name': instance.name,
      'isDone': instance.isDone,
      'dateTime': instance.dateTime.toIso8601String(),
      'isToday': instance.isToday,
      'rate': instance.rate,
    };

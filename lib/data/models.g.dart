// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Speaker _$SpeakerFromJson(Map<String, dynamic> json) {
  return Speaker(json['name'] as String, json['bio'] as String,
      json['image_url'] as String);
}

Map<String, dynamic> _$SpeakerToJson(Speaker instance) => <String, dynamic>{
      'name': instance.name,
      'bio': instance.bio,
      'image_url': instance.imageUrl
    };

TalkType _$TalkTypeFromJson(Map<String, dynamic> json) {
  return TalkType(json['name'] as String, json['material_icon'] as String);
}

Map<String, dynamic> _$TalkTypeToJson(TalkType instance) => <String, dynamic>{
      'name': instance.name,
      'material_icon': instance.materialIcon
    };

Talk _$TalkFromJson(Map<String, dynamic> json) {
  return Talk(
      json['speaker_id'] as int,
      json['track_id'] as int,
      json['talk_type_id'] as int,
      json['title'] as String,
      json['description'] as String);
}

Map<String, dynamic> _$TalkToJson(Talk instance) => <String, dynamic>{
      'speaker_id': instance.speakerId,
      'track_id': instance.trackId,
      'talk_type_id': instance.talkTypeId,
      'title': instance.title,
      'description': instance.description
    };

Schedule _$ScheduleFromJson(Map<String, dynamic> json) {
  return Schedule(
      json['time'] as String,
      (json['talks'] as List)
          ?.map((e) =>
              e == null ? null : Talk.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$ScheduleToJson(Schedule instance) =>
    <String, dynamic>{'time': instance.time, 'talks': instance.talks};
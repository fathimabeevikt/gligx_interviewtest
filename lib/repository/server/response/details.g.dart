// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailsResponse _$DetailsResponseFromJson(Map<String, dynamic> json) =>
    DetailsResponse(
      Data.fromJson(json['data'] as Map<String, dynamic>),
      Support.fromJson(json['support'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DetailsResponseToJson(DetailsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'support': instance.support,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      json['id'] as int,
      json['email'] as String,
      json['first_name'] as String,
      json['last_name'] as String,
      json['avatar'] as String,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar': instance.avatar,
    };

Support _$SupportFromJson(Map<String, dynamic> json) => Support(
      json['url'] as String,
      json['text'] as String,
    );

Map<String, dynamic> _$SupportToJson(Support instance) => <String, dynamic>{
      'url': instance.url,
      'text': instance.text,
    };

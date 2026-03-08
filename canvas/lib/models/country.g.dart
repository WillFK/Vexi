// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryImpl _$$CountryImplFromJson(Map<String, dynamic> json) =>
    _$CountryImpl(
      code: json['code'] as String,
      fullNameEn: json['full_name_en'] as String,
      shortNameEn: json['short_name_en'] as String,
      fullNameLocal: json['full_name_local'] as String,
    );

Map<String, dynamic> _$$CountryImplToJson(_$CountryImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'full_name_en': instance.fullNameEn,
      'short_name_en': instance.shortNameEn,
      'full_name_local': instance.fullNameLocal,
    };

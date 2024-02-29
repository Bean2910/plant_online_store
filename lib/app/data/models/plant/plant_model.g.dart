// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlantModelImpl _$$PlantModelImplFromJson(Map<String, dynamic> json) =>
    _$PlantModelImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      to: json['to'] as int?,
      perPage: json['perPage'] as int?,
      currentPage: json['currentPage'] as int?,
      from: json['from'] as int?,
      lastPage: json['lastPage'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$PlantModelImplToJson(_$PlantModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'to': instance.to,
      'perPage': instance.perPage,
      'currentPage': instance.currentPage,
      'from': instance.from,
      'lastPage': instance.lastPage,
      'total': instance.total,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      id: json['id'] as int?,
      commonName: json['common_name'] as String?,
      scientificName: (json['scientific_name'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      otherName: (json['other_name'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      cycle: json['cycle'] as String?,
      watering: json['watering'] as String?,
      sunlight: (json['sunlight'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      defaultImage: json['default_image'] == null
          ? null
          : DefaultImage.fromJson(
              json['default_image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'common_name': instance.commonName,
      'scientific_name': instance.scientificName,
      'other_name': instance.otherName,
      'cycle': instance.cycle,
      'watering': instance.watering,
      'sunlight': instance.sunlight,
      'default_image': instance.defaultImage,
    };

_$DefaultImageImpl _$$DefaultImageImplFromJson(Map<String, dynamic> json) =>
    _$DefaultImageImpl(
      license: json['license'] as int?,
      licenseName: json['license_name'] as String?,
      licenseUrl: json['license_url'] as String?,
      originalUrl: json['original_url'] as String?,
      regularUrl: json['regular_url'] as String?,
      mediumUrl: json['medium_url'] as String?,
      smallUrl: json['small_url'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$DefaultImageImplToJson(_$DefaultImageImpl instance) =>
    <String, dynamic>{
      'license': instance.license,
      'license_name': instance.licenseName,
      'license_url': instance.licenseUrl,
      'original_url': instance.originalUrl,
      'regular_url': instance.regularUrl,
      'medium_url': instance.mediumUrl,
      'small_url': instance.smallUrl,
      'thumbnail': instance.thumbnail,
    };

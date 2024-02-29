// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_plant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailPlantModelImpl _$$DetailPlantModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailPlantModelImpl(
      id: json['id'] as int?,
      commonName: json['commonName'] as String?,
      scientificName: (json['scientificName'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      otherName: (json['otherName'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      family: json['family'],
      origin:
          (json['origin'] as List<dynamic>?)?.map((e) => e as String).toList(),
      type: json['type'] as String?,
      dimension: json['dimension'] as String?,
      dimensions: json['dimensions'] == null
          ? null
          : Dimensions.fromJson(json['dimensions'] as Map<String, dynamic>),
      cycle: json['cycle'] as String?,
      attracts: json['attracts'] as List<dynamic>?,
      propagation: (json['propagation'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      hardiness: json['hardiness'] == null
          ? null
          : Hardiness.fromJson(json['hardiness'] as Map<String, dynamic>),
      hardinessLocation: json['hardinessLocation'] == null
          ? null
          : HardinessLocation.fromJson(
              json['hardinessLocation'] as Map<String, dynamic>),
      watering: json['watering'] as String?,
      depthWaterRequirement: json['depthWaterRequirement'] as List<dynamic>?,
      volumeWaterRequirement: json['volumeWaterRequirement'] as List<dynamic>?,
      wateringPeriod: json['wateringPeriod'],
      wateringGeneralBenchmark: json['wateringGeneralBenchmark'] == null
          ? null
          : WateringGeneralBenchmark.fromJson(
              json['wateringGeneralBenchmark'] as Map<String, dynamic>),
      plantAnatomy: json['plantAnatomy'] as List<dynamic>?,
      sunlight: (json['sunlight'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      pruningMonth: (json['pruningMonth'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      pruningCount: json['pruningCount'] as List<dynamic>?,
      seeds: json['seeds'] as int?,
      maintenance: json['maintenance'],
      careGuides: json['careGuides'] as String?,
      soil: json['soil'] as List<dynamic>?,
      growthRate: json['growthRate'] as String?,
      droughtTolerant: json['droughtTolerant'] as bool?,
      saltTolerant: json['saltTolerant'] as bool?,
      thorny: json['thorny'] as bool?,
      invasive: json['invasive'] as bool?,
      tropical: json['tropical'] as bool?,
      indoor: json['indoor'] as bool?,
      careLevel: json['careLevel'] as String?,
      pestSusceptibility: json['pestSusceptibility'] as List<dynamic>?,
      pestSusceptibilityApi: json['pestSusceptibilityApi'] as String?,
      flowers: json['flowers'] as bool?,
      floweringSeason: json['floweringSeason'],
      flowerColor: json['flowerColor'] as String?,
      cones: json['cones'] as bool?,
      fruits: json['fruits'] as bool?,
      edibleFruit: json['edibleFruit'] as bool?,
      edibleFruitTasteProfile: json['edibleFruitTasteProfile'] as String?,
      fruitNutritionalValue: json['fruitNutritionalValue'] as String?,
      fruitColor: json['fruitColor'] as List<dynamic>?,
      harvestSeason: json['harvestSeason'],
      leaf: json['leaf'] as bool?,
      leafColor: (json['leafColor'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      edibleLeaf: json['edibleLeaf'] as bool?,
      cuisine: json['cuisine'] as bool?,
      medicinal: json['medicinal'] as bool?,
      poisonousToHumans: json['poisonousToHumans'] as int?,
      poisonousToPets: json['poisonousToPets'] as int?,
      description: json['description'] as String?,
      defaultImage: json['defaultImage'] == null
          ? null
          : DefaultImage.fromJson(json['defaultImage'] as Map<String, dynamic>),
      otherImages: json['otherImages'] as String?,
    );

Map<String, dynamic> _$$DetailPlantModelImplToJson(
        _$DetailPlantModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'commonName': instance.commonName,
      'scientificName': instance.scientificName,
      'otherName': instance.otherName,
      'family': instance.family,
      'origin': instance.origin,
      'type': instance.type,
      'dimension': instance.dimension,
      'dimensions': instance.dimensions,
      'cycle': instance.cycle,
      'attracts': instance.attracts,
      'propagation': instance.propagation,
      'hardiness': instance.hardiness,
      'hardinessLocation': instance.hardinessLocation,
      'watering': instance.watering,
      'depthWaterRequirement': instance.depthWaterRequirement,
      'volumeWaterRequirement': instance.volumeWaterRequirement,
      'wateringPeriod': instance.wateringPeriod,
      'wateringGeneralBenchmark': instance.wateringGeneralBenchmark,
      'plantAnatomy': instance.plantAnatomy,
      'sunlight': instance.sunlight,
      'pruningMonth': instance.pruningMonth,
      'pruningCount': instance.pruningCount,
      'seeds': instance.seeds,
      'maintenance': instance.maintenance,
      'careGuides': instance.careGuides,
      'soil': instance.soil,
      'growthRate': instance.growthRate,
      'droughtTolerant': instance.droughtTolerant,
      'saltTolerant': instance.saltTolerant,
      'thorny': instance.thorny,
      'invasive': instance.invasive,
      'tropical': instance.tropical,
      'indoor': instance.indoor,
      'careLevel': instance.careLevel,
      'pestSusceptibility': instance.pestSusceptibility,
      'pestSusceptibilityApi': instance.pestSusceptibilityApi,
      'flowers': instance.flowers,
      'floweringSeason': instance.floweringSeason,
      'flowerColor': instance.flowerColor,
      'cones': instance.cones,
      'fruits': instance.fruits,
      'edibleFruit': instance.edibleFruit,
      'edibleFruitTasteProfile': instance.edibleFruitTasteProfile,
      'fruitNutritionalValue': instance.fruitNutritionalValue,
      'fruitColor': instance.fruitColor,
      'harvestSeason': instance.harvestSeason,
      'leaf': instance.leaf,
      'leafColor': instance.leafColor,
      'edibleLeaf': instance.edibleLeaf,
      'cuisine': instance.cuisine,
      'medicinal': instance.medicinal,
      'poisonousToHumans': instance.poisonousToHumans,
      'poisonousToPets': instance.poisonousToPets,
      'description': instance.description,
      'defaultImage': instance.defaultImage,
      'otherImages': instance.otherImages,
    };

_$DefaultImageImpl _$$DefaultImageImplFromJson(Map<String, dynamic> json) =>
    _$DefaultImageImpl(
      license: json['license'] as int?,
      licenseName: json['licenseName'] as String?,
      licenseUrl: json['licenseUrl'] as String?,
      originalUrl: json['originalUrl'] as String?,
      regularUrl: json['regularUrl'] as String?,
      mediumUrl: json['mediumUrl'] as String?,
      smallUrl: json['smallUrl'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$DefaultImageImplToJson(_$DefaultImageImpl instance) =>
    <String, dynamic>{
      'license': instance.license,
      'licenseName': instance.licenseName,
      'licenseUrl': instance.licenseUrl,
      'originalUrl': instance.originalUrl,
      'regularUrl': instance.regularUrl,
      'mediumUrl': instance.mediumUrl,
      'smallUrl': instance.smallUrl,
      'thumbnail': instance.thumbnail,
    };

_$DimensionsImpl _$$DimensionsImplFromJson(Map<String, dynamic> json) =>
    _$DimensionsImpl(
      type: json['type'] as String?,
      minValue: json['minValue'] as int?,
      maxValue: json['maxValue'] as int?,
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$$DimensionsImplToJson(_$DimensionsImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'minValue': instance.minValue,
      'maxValue': instance.maxValue,
      'unit': instance.unit,
    };

_$HardinessImpl _$$HardinessImplFromJson(Map<String, dynamic> json) =>
    _$HardinessImpl(
      min: json['min'] as String?,
      max: json['max'] as String?,
    );

Map<String, dynamic> _$$HardinessImplToJson(_$HardinessImpl instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };

_$HardinessLocationImpl _$$HardinessLocationImplFromJson(
        Map<String, dynamic> json) =>
    _$HardinessLocationImpl(
      fullUrl: json['fullUrl'] as String?,
      fullIframe: json['fullIframe'] as String?,
    );

Map<String, dynamic> _$$HardinessLocationImplToJson(
        _$HardinessLocationImpl instance) =>
    <String, dynamic>{
      'fullUrl': instance.fullUrl,
      'fullIframe': instance.fullIframe,
    };

_$WateringGeneralBenchmarkImpl _$$WateringGeneralBenchmarkImplFromJson(
        Map<String, dynamic> json) =>
    _$WateringGeneralBenchmarkImpl(
      value: json['value'] as String?,
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$$WateringGeneralBenchmarkImplToJson(
        _$WateringGeneralBenchmarkImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'unit': instance.unit,
    };

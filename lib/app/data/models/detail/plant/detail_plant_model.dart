// To parse this JSON data, do
//
//     final detailPlantModel = detailPlantModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'detail_plant_model.freezed.dart';
part 'detail_plant_model.g.dart';

DetailPlantModel detailPlantModelFromJson(String str) => DetailPlantModel.fromJson(json.decode(str));

String detailPlantModelToJson(DetailPlantModel data) => json.encode(data.toJson());

@freezed
class DetailPlantModel with _$DetailPlantModel {
  const factory DetailPlantModel({
    int? id,
    String? commonName,
    List<String>? scientificName,
    List<String>? otherName,
    dynamic family,
    List<String>? origin,
    String? type,
    String? dimension,
    Dimensions? dimensions,
    String? cycle,
    List<dynamic>? attracts,
    List<String>? propagation,
    Hardiness? hardiness,
    HardinessLocation? hardinessLocation,
    String? watering,
    List<dynamic>? depthWaterRequirement,
    List<dynamic>? volumeWaterRequirement,
    dynamic wateringPeriod,
    WateringGeneralBenchmark? wateringGeneralBenchmark,
    List<dynamic>? plantAnatomy,
    List<String>? sunlight,
    List<String>? pruningMonth,
    List<dynamic>? pruningCount,
    int? seeds,
    dynamic maintenance,
    String? careGuides,
    List<dynamic>? soil,
    String? growthRate,
    bool? droughtTolerant,
    bool? saltTolerant,
    bool? thorny,
    bool? invasive,
    bool? tropical,
    bool? indoor,
    String? careLevel,
    List<dynamic>? pestSusceptibility,
    String? pestSusceptibilityApi,
    bool? flowers,
    dynamic floweringSeason,
    String? flowerColor,
    bool? cones,
    bool? fruits,
    bool? edibleFruit,
    String? edibleFruitTasteProfile,
    String? fruitNutritionalValue,
    List<dynamic>? fruitColor,
    dynamic harvestSeason,
    bool? leaf,
    List<String>? leafColor,
    bool? edibleLeaf,
    bool? cuisine,
    bool? medicinal,
    int? poisonousToHumans,
    int? poisonousToPets,
    String? description,
    DefaultImage? defaultImage,
    String? otherImages,
  }) = _DetailPlantModel;

  factory DetailPlantModel.fromJson(Map<String, dynamic> json) => _$DetailPlantModelFromJson(json);
}

@freezed
class DefaultImage with _$DefaultImage {
  const factory DefaultImage({
    int? license,
    String? licenseName,
    String? licenseUrl,
    String? originalUrl,
    String? regularUrl,
    String? mediumUrl,
    String? smallUrl,
    String? thumbnail,
  }) = _DefaultImage;

  factory DefaultImage.fromJson(Map<String, dynamic> json) => _$DefaultImageFromJson(json);
}

@freezed
class Dimensions with _$Dimensions {
  const factory Dimensions({
    String? type,
    int? minValue,
    int? maxValue,
    String? unit,
  }) = _Dimensions;

  factory Dimensions.fromJson(Map<String, dynamic> json) => _$DimensionsFromJson(json);
}

@freezed
class Hardiness with _$Hardiness {
  const factory Hardiness({
    String? min,
    String? max,
  }) = _Hardiness;

  factory Hardiness.fromJson(Map<String, dynamic> json) => _$HardinessFromJson(json);
}

@freezed
class HardinessLocation with _$HardinessLocation {
  const factory HardinessLocation({
    String? fullUrl,
    String? fullIframe,
  }) = _HardinessLocation;

  factory HardinessLocation.fromJson(Map<String, dynamic> json) => _$HardinessLocationFromJson(json);
}

@freezed
class WateringGeneralBenchmark with _$WateringGeneralBenchmark {
  const factory WateringGeneralBenchmark({
    String? value,
    String? unit,
  }) = _WateringGeneralBenchmark;

  factory WateringGeneralBenchmark.fromJson(Map<String, dynamic> json) => _$WateringGeneralBenchmarkFromJson(json);
}

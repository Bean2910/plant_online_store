// To parse this JSON data, do
//
//     final plantModel = plantModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'plant_model.freezed.dart';
part 'plant_model.g.dart';

@freezed
class PlantModel with _$PlantModel {
  const factory PlantModel({
    List<Datum>? data,
    int? to,
    int? perPage,
    int? currentPage,
    int? from,
    int? lastPage,
    int? total,
  }) = _PlantModel;

  factory PlantModel.fromJson(Map<String, dynamic> json) => _$PlantModelFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    int? id,
    @JsonKey(name: "common_name")
    String? commonName,
    @JsonKey(name: "scientific_name")
    List<String>? scientificName,
    @JsonKey(name: "other_name")
    List<String>? otherName,
    String? cycle,
    String? watering,
    List<String>? sunlight,
    @JsonKey(name: "default_image")
    DefaultImage? defaultImage,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class DefaultImage with _$DefaultImage {
  const factory DefaultImage({
    int? license,
    @JsonKey(name: "license_name")
    String? licenseName,
    @JsonKey(name: "license_url")
    String? licenseUrl,
    @JsonKey(name: "original_url")
    String? originalUrl,
    @JsonKey(name: "regular_url")
    String? regularUrl,
    @JsonKey(name: "medium_url")
    String? mediumUrl,
    @JsonKey(name: "small_url")
    String? smallUrl,
    @JsonKey(name: "thumbnail")
    String? thumbnail,
  }) = _DefaultImage;

  factory DefaultImage.fromJson(Map<String, dynamic> json) => _$DefaultImageFromJson(json);
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlantModel _$PlantModelFromJson(Map<String, dynamic> json) {
  return _PlantModel.fromJson(json);
}

/// @nodoc
mixin _$PlantModel {
  List<Datum>? get data => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;
  int? get currentPage => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  int? get lastPage => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlantModelCopyWith<PlantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantModelCopyWith<$Res> {
  factory $PlantModelCopyWith(
          PlantModel value, $Res Function(PlantModel) then) =
      _$PlantModelCopyWithImpl<$Res, PlantModel>;
  @useResult
  $Res call(
      {List<Datum>? data,
      int? to,
      int? perPage,
      int? currentPage,
      int? from,
      int? lastPage,
      int? total});
}

/// @nodoc
class _$PlantModelCopyWithImpl<$Res, $Val extends PlantModel>
    implements $PlantModelCopyWith<$Res> {
  _$PlantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? to = freezed,
    Object? perPage = freezed,
    Object? currentPage = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlantModelImplCopyWith<$Res>
    implements $PlantModelCopyWith<$Res> {
  factory _$$PlantModelImplCopyWith(
          _$PlantModelImpl value, $Res Function(_$PlantModelImpl) then) =
      __$$PlantModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Datum>? data,
      int? to,
      int? perPage,
      int? currentPage,
      int? from,
      int? lastPage,
      int? total});
}

/// @nodoc
class __$$PlantModelImplCopyWithImpl<$Res>
    extends _$PlantModelCopyWithImpl<$Res, _$PlantModelImpl>
    implements _$$PlantModelImplCopyWith<$Res> {
  __$$PlantModelImplCopyWithImpl(
      _$PlantModelImpl _value, $Res Function(_$PlantModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? to = freezed,
    Object? perPage = freezed,
    Object? currentPage = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? total = freezed,
  }) {
    return _then(_$PlantModelImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlantModelImpl implements _PlantModel {
  const _$PlantModelImpl(
      {final List<Datum>? data,
      this.to,
      this.perPage,
      this.currentPage,
      this.from,
      this.lastPage,
      this.total})
      : _data = data;

  factory _$PlantModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlantModelImplFromJson(json);

  final List<Datum>? _data;
  @override
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? to;
  @override
  final int? perPage;
  @override
  final int? currentPage;
  @override
  final int? from;
  @override
  final int? lastPage;
  @override
  final int? total;

  @override
  String toString() {
    return 'PlantModel(data: $data, to: $to, perPage: $perPage, currentPage: $currentPage, from: $from, lastPage: $lastPage, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      to,
      perPage,
      currentPage,
      from,
      lastPage,
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantModelImplCopyWith<_$PlantModelImpl> get copyWith =>
      __$$PlantModelImplCopyWithImpl<_$PlantModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlantModelImplToJson(
      this,
    );
  }
}

abstract class _PlantModel implements PlantModel {
  const factory _PlantModel(
      {final List<Datum>? data,
      final int? to,
      final int? perPage,
      final int? currentPage,
      final int? from,
      final int? lastPage,
      final int? total}) = _$PlantModelImpl;

  factory _PlantModel.fromJson(Map<String, dynamic> json) =
      _$PlantModelImpl.fromJson;

  @override
  List<Datum>? get data;
  @override
  int? get to;
  @override
  int? get perPage;
  @override
  int? get currentPage;
  @override
  int? get from;
  @override
  int? get lastPage;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$PlantModelImplCopyWith<_$PlantModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "common_name")
  String? get commonName => throw _privateConstructorUsedError;
  @JsonKey(name: "scientific_name")
  List<String>? get scientificName => throw _privateConstructorUsedError;
  @JsonKey(name: "other_name")
  List<String>? get otherName => throw _privateConstructorUsedError;
  String? get cycle => throw _privateConstructorUsedError;
  String? get watering => throw _privateConstructorUsedError;
  List<String>? get sunlight => throw _privateConstructorUsedError;
  @JsonKey(name: "default_image")
  DefaultImage? get defaultImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "common_name") String? commonName,
      @JsonKey(name: "scientific_name") List<String>? scientificName,
      @JsonKey(name: "other_name") List<String>? otherName,
      String? cycle,
      String? watering,
      List<String>? sunlight,
      @JsonKey(name: "default_image") DefaultImage? defaultImage});

  $DefaultImageCopyWith<$Res>? get defaultImage;
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? commonName = freezed,
    Object? scientificName = freezed,
    Object? otherName = freezed,
    Object? cycle = freezed,
    Object? watering = freezed,
    Object? sunlight = freezed,
    Object? defaultImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      commonName: freezed == commonName
          ? _value.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as String?,
      scientificName: freezed == scientificName
          ? _value.scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      otherName: freezed == otherName
          ? _value.otherName
          : otherName // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      cycle: freezed == cycle
          ? _value.cycle
          : cycle // ignore: cast_nullable_to_non_nullable
              as String?,
      watering: freezed == watering
          ? _value.watering
          : watering // ignore: cast_nullable_to_non_nullable
              as String?,
      sunlight: freezed == sunlight
          ? _value.sunlight
          : sunlight // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      defaultImage: freezed == defaultImage
          ? _value.defaultImage
          : defaultImage // ignore: cast_nullable_to_non_nullable
              as DefaultImage?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DefaultImageCopyWith<$Res>? get defaultImage {
    if (_value.defaultImage == null) {
      return null;
    }

    return $DefaultImageCopyWith<$Res>(_value.defaultImage!, (value) {
      return _then(_value.copyWith(defaultImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "common_name") String? commonName,
      @JsonKey(name: "scientific_name") List<String>? scientificName,
      @JsonKey(name: "other_name") List<String>? otherName,
      String? cycle,
      String? watering,
      List<String>? sunlight,
      @JsonKey(name: "default_image") DefaultImage? defaultImage});

  @override
  $DefaultImageCopyWith<$Res>? get defaultImage;
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DatumCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? commonName = freezed,
    Object? scientificName = freezed,
    Object? otherName = freezed,
    Object? cycle = freezed,
    Object? watering = freezed,
    Object? sunlight = freezed,
    Object? defaultImage = freezed,
  }) {
    return _then(_$DatumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      commonName: freezed == commonName
          ? _value.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as String?,
      scientificName: freezed == scientificName
          ? _value._scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      otherName: freezed == otherName
          ? _value._otherName
          : otherName // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      cycle: freezed == cycle
          ? _value.cycle
          : cycle // ignore: cast_nullable_to_non_nullable
              as String?,
      watering: freezed == watering
          ? _value.watering
          : watering // ignore: cast_nullable_to_non_nullable
              as String?,
      sunlight: freezed == sunlight
          ? _value._sunlight
          : sunlight // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      defaultImage: freezed == defaultImage
          ? _value.defaultImage
          : defaultImage // ignore: cast_nullable_to_non_nullable
              as DefaultImage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {this.id,
      @JsonKey(name: "common_name") this.commonName,
      @JsonKey(name: "scientific_name") final List<String>? scientificName,
      @JsonKey(name: "other_name") final List<String>? otherName,
      this.cycle,
      this.watering,
      final List<String>? sunlight,
      @JsonKey(name: "default_image") this.defaultImage})
      : _scientificName = scientificName,
        _otherName = otherName,
        _sunlight = sunlight;

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "common_name")
  final String? commonName;
  final List<String>? _scientificName;
  @override
  @JsonKey(name: "scientific_name")
  List<String>? get scientificName {
    final value = _scientificName;
    if (value == null) return null;
    if (_scientificName is EqualUnmodifiableListView) return _scientificName;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _otherName;
  @override
  @JsonKey(name: "other_name")
  List<String>? get otherName {
    final value = _otherName;
    if (value == null) return null;
    if (_otherName is EqualUnmodifiableListView) return _otherName;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? cycle;
  @override
  final String? watering;
  final List<String>? _sunlight;
  @override
  List<String>? get sunlight {
    final value = _sunlight;
    if (value == null) return null;
    if (_sunlight is EqualUnmodifiableListView) return _sunlight;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "default_image")
  final DefaultImage? defaultImage;

  @override
  String toString() {
    return 'Datum(id: $id, commonName: $commonName, scientificName: $scientificName, otherName: $otherName, cycle: $cycle, watering: $watering, sunlight: $sunlight, defaultImage: $defaultImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.commonName, commonName) ||
                other.commonName == commonName) &&
            const DeepCollectionEquality()
                .equals(other._scientificName, _scientificName) &&
            const DeepCollectionEquality()
                .equals(other._otherName, _otherName) &&
            (identical(other.cycle, cycle) || other.cycle == cycle) &&
            (identical(other.watering, watering) ||
                other.watering == watering) &&
            const DeepCollectionEquality().equals(other._sunlight, _sunlight) &&
            (identical(other.defaultImage, defaultImage) ||
                other.defaultImage == defaultImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      commonName,
      const DeepCollectionEquality().hash(_scientificName),
      const DeepCollectionEquality().hash(_otherName),
      cycle,
      watering,
      const DeepCollectionEquality().hash(_sunlight),
      defaultImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
          {final int? id,
          @JsonKey(name: "common_name") final String? commonName,
          @JsonKey(name: "scientific_name") final List<String>? scientificName,
          @JsonKey(name: "other_name") final List<String>? otherName,
          final String? cycle,
          final String? watering,
          final List<String>? sunlight,
          @JsonKey(name: "default_image") final DefaultImage? defaultImage}) =
      _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "common_name")
  String? get commonName;
  @override
  @JsonKey(name: "scientific_name")
  List<String>? get scientificName;
  @override
  @JsonKey(name: "other_name")
  List<String>? get otherName;
  @override
  String? get cycle;
  @override
  String? get watering;
  @override
  List<String>? get sunlight;
  @override
  @JsonKey(name: "default_image")
  DefaultImage? get defaultImage;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DefaultImage _$DefaultImageFromJson(Map<String, dynamic> json) {
  return _DefaultImage.fromJson(json);
}

/// @nodoc
mixin _$DefaultImage {
  int? get license => throw _privateConstructorUsedError;
  @JsonKey(name: "license_name")
  String? get licenseName => throw _privateConstructorUsedError;
  @JsonKey(name: "license_url")
  String? get licenseUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "original_url")
  String? get originalUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "regular_url")
  String? get regularUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "medium_url")
  String? get mediumUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "small_url")
  String? get smallUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail")
  String? get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefaultImageCopyWith<DefaultImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultImageCopyWith<$Res> {
  factory $DefaultImageCopyWith(
          DefaultImage value, $Res Function(DefaultImage) then) =
      _$DefaultImageCopyWithImpl<$Res, DefaultImage>;
  @useResult
  $Res call(
      {int? license,
      @JsonKey(name: "license_name") String? licenseName,
      @JsonKey(name: "license_url") String? licenseUrl,
      @JsonKey(name: "original_url") String? originalUrl,
      @JsonKey(name: "regular_url") String? regularUrl,
      @JsonKey(name: "medium_url") String? mediumUrl,
      @JsonKey(name: "small_url") String? smallUrl,
      @JsonKey(name: "thumbnail") String? thumbnail});
}

/// @nodoc
class _$DefaultImageCopyWithImpl<$Res, $Val extends DefaultImage>
    implements $DefaultImageCopyWith<$Res> {
  _$DefaultImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? license = freezed,
    Object? licenseName = freezed,
    Object? licenseUrl = freezed,
    Object? originalUrl = freezed,
    Object? regularUrl = freezed,
    Object? mediumUrl = freezed,
    Object? smallUrl = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as int?,
      licenseName: freezed == licenseName
          ? _value.licenseName
          : licenseName // ignore: cast_nullable_to_non_nullable
              as String?,
      licenseUrl: freezed == licenseUrl
          ? _value.licenseUrl
          : licenseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      originalUrl: freezed == originalUrl
          ? _value.originalUrl
          : originalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      regularUrl: freezed == regularUrl
          ? _value.regularUrl
          : regularUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumUrl: freezed == mediumUrl
          ? _value.mediumUrl
          : mediumUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      smallUrl: freezed == smallUrl
          ? _value.smallUrl
          : smallUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DefaultImageImplCopyWith<$Res>
    implements $DefaultImageCopyWith<$Res> {
  factory _$$DefaultImageImplCopyWith(
          _$DefaultImageImpl value, $Res Function(_$DefaultImageImpl) then) =
      __$$DefaultImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? license,
      @JsonKey(name: "license_name") String? licenseName,
      @JsonKey(name: "license_url") String? licenseUrl,
      @JsonKey(name: "original_url") String? originalUrl,
      @JsonKey(name: "regular_url") String? regularUrl,
      @JsonKey(name: "medium_url") String? mediumUrl,
      @JsonKey(name: "small_url") String? smallUrl,
      @JsonKey(name: "thumbnail") String? thumbnail});
}

/// @nodoc
class __$$DefaultImageImplCopyWithImpl<$Res>
    extends _$DefaultImageCopyWithImpl<$Res, _$DefaultImageImpl>
    implements _$$DefaultImageImplCopyWith<$Res> {
  __$$DefaultImageImplCopyWithImpl(
      _$DefaultImageImpl _value, $Res Function(_$DefaultImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? license = freezed,
    Object? licenseName = freezed,
    Object? licenseUrl = freezed,
    Object? originalUrl = freezed,
    Object? regularUrl = freezed,
    Object? mediumUrl = freezed,
    Object? smallUrl = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$DefaultImageImpl(
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as int?,
      licenseName: freezed == licenseName
          ? _value.licenseName
          : licenseName // ignore: cast_nullable_to_non_nullable
              as String?,
      licenseUrl: freezed == licenseUrl
          ? _value.licenseUrl
          : licenseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      originalUrl: freezed == originalUrl
          ? _value.originalUrl
          : originalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      regularUrl: freezed == regularUrl
          ? _value.regularUrl
          : regularUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumUrl: freezed == mediumUrl
          ? _value.mediumUrl
          : mediumUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      smallUrl: freezed == smallUrl
          ? _value.smallUrl
          : smallUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DefaultImageImpl implements _DefaultImage {
  const _$DefaultImageImpl(
      {this.license,
      @JsonKey(name: "license_name") this.licenseName,
      @JsonKey(name: "license_url") this.licenseUrl,
      @JsonKey(name: "original_url") this.originalUrl,
      @JsonKey(name: "regular_url") this.regularUrl,
      @JsonKey(name: "medium_url") this.mediumUrl,
      @JsonKey(name: "small_url") this.smallUrl,
      @JsonKey(name: "thumbnail") this.thumbnail});

  factory _$DefaultImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$DefaultImageImplFromJson(json);

  @override
  final int? license;
  @override
  @JsonKey(name: "license_name")
  final String? licenseName;
  @override
  @JsonKey(name: "license_url")
  final String? licenseUrl;
  @override
  @JsonKey(name: "original_url")
  final String? originalUrl;
  @override
  @JsonKey(name: "regular_url")
  final String? regularUrl;
  @override
  @JsonKey(name: "medium_url")
  final String? mediumUrl;
  @override
  @JsonKey(name: "small_url")
  final String? smallUrl;
  @override
  @JsonKey(name: "thumbnail")
  final String? thumbnail;

  @override
  String toString() {
    return 'DefaultImage(license: $license, licenseName: $licenseName, licenseUrl: $licenseUrl, originalUrl: $originalUrl, regularUrl: $regularUrl, mediumUrl: $mediumUrl, smallUrl: $smallUrl, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultImageImpl &&
            (identical(other.license, license) || other.license == license) &&
            (identical(other.licenseName, licenseName) ||
                other.licenseName == licenseName) &&
            (identical(other.licenseUrl, licenseUrl) ||
                other.licenseUrl == licenseUrl) &&
            (identical(other.originalUrl, originalUrl) ||
                other.originalUrl == originalUrl) &&
            (identical(other.regularUrl, regularUrl) ||
                other.regularUrl == regularUrl) &&
            (identical(other.mediumUrl, mediumUrl) ||
                other.mediumUrl == mediumUrl) &&
            (identical(other.smallUrl, smallUrl) ||
                other.smallUrl == smallUrl) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, license, licenseName, licenseUrl,
      originalUrl, regularUrl, mediumUrl, smallUrl, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultImageImplCopyWith<_$DefaultImageImpl> get copyWith =>
      __$$DefaultImageImplCopyWithImpl<_$DefaultImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DefaultImageImplToJson(
      this,
    );
  }
}

abstract class _DefaultImage implements DefaultImage {
  const factory _DefaultImage(
          {final int? license,
          @JsonKey(name: "license_name") final String? licenseName,
          @JsonKey(name: "license_url") final String? licenseUrl,
          @JsonKey(name: "original_url") final String? originalUrl,
          @JsonKey(name: "regular_url") final String? regularUrl,
          @JsonKey(name: "medium_url") final String? mediumUrl,
          @JsonKey(name: "small_url") final String? smallUrl,
          @JsonKey(name: "thumbnail") final String? thumbnail}) =
      _$DefaultImageImpl;

  factory _DefaultImage.fromJson(Map<String, dynamic> json) =
      _$DefaultImageImpl.fromJson;

  @override
  int? get license;
  @override
  @JsonKey(name: "license_name")
  String? get licenseName;
  @override
  @JsonKey(name: "license_url")
  String? get licenseUrl;
  @override
  @JsonKey(name: "original_url")
  String? get originalUrl;
  @override
  @JsonKey(name: "regular_url")
  String? get regularUrl;
  @override
  @JsonKey(name: "medium_url")
  String? get mediumUrl;
  @override
  @JsonKey(name: "small_url")
  String? get smallUrl;
  @override
  @JsonKey(name: "thumbnail")
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$DefaultImageImplCopyWith<_$DefaultImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

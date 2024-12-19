import 'package:freezed_annotation/freezed_annotation.dart';

part 'sliders_model.freezed.dart';
part 'sliders_model.g.dart';

@freezed
class SlidersModel with _$SlidersModel {

  factory SlidersModel({
    int? id,
    List<String>? images,
    String? title,
    String? slug

  }) = _SlidersModel;

  factory SlidersModel.fromJson(Map<String, dynamic> json) => _$SlidersModelFromJson(json);
}
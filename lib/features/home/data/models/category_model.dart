import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {

  factory CategoryModel({
    final  int? id , 
    final String? name ,
    final String? description  , 
    final String? slug  ,  
    final String? thumbnail  ,
    @JsonValue( 'cover_image') final String? coverImage , 
    @JsonValue( 'is_private') final int? isPrivate , 
    @JsonValue( 'is_active') final int? isActive 

  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);
}
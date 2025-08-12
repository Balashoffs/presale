import 'package:freezed_annotation/freezed_annotation.dart';

part 'object_data_design.g.dart';

part 'object_data_design.freezed.dart';

@freezed
class ObjectDataDesign with _$ObjectDataDesign {
  const factory ObjectDataDesign({
    //Имя объекта
    required final String name,
    // Адрес объекта
    required final String address,
    // Площадь объекта
    @Default(0.0) final double square,
    // Сроки работ
    @Default(0) final int deadlineValue,
  }) = _ObjectDataDesign;

  factory ObjectDataDesign.fromJson(Map<String, dynamic> json) =>
      _$ObjectDataDesignFromJson(json);
}

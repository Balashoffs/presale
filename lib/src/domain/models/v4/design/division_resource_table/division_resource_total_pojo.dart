import 'package:freezed_annotation/freezed_annotation.dart';

import 'division_resource_table_pojo.dart';
part 'division_resource_total_pojo.g.dart';

part 'division_resource_total_pojo.freezed.dart';


@freezed
class DivisionResourceTotalPojo with _$DivisionResourceTotalPojo {
  const factory DivisionResourceTotalPojo({
    @Default({})Map<String, DivisionResourceTableWithTypePojo> resorces
}) = _DivisionResourceTotalPojo;

  factory DivisionResourceTotalPojo.fromJson(Map<String, dynamic> json) =>
      _$DivisionResourceTotalPojoFromJson(json);
}

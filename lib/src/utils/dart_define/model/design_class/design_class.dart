import 'package:freezed_annotation/freezed_annotation.dart';

part 'design_class.g.dart';

part 'design_class.freezed.dart';

/*
"resources",
"work_divisions",
 "project_divisions",
 "sign",
 */
@freezed
class DesignClass with _$DesignClass {
  const factory DesignClass({
    required String resources,
    @JsonKey(name: 'job_divisions')required String workDivisions,
    @JsonKey(name: 'project_divisions') required String projectDivisions,
    String? sign,
}) = _DesignClass;

  factory DesignClass.fromJson(Map<String, dynamic> json) =>
      _$DesignClassFromJson(json);
}

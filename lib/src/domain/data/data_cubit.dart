import 'package:presale/src/data/clients/v1/employee_client.dart';
import 'package:presale/src/data/clients/v1/section_client.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class DataCubit extends HydratedCubit<bool> {
  final EmployeeClient _employeeClient;
  final SectionClient _sectionClient;

  DataCubit(
    this._employeeClient,
    this._sectionClient,
  ) : super(false);

  void checkInit(
    void Function() onSuccess,
    void Function() onFailure,
  ) async {
    if (state) {
      onSuccess();
      return;
    }
    final e = await _employeeClient.initialize();
    e.fold(
      (l) {onFailure(); return;},
      (r) => null,
    );
    final s = await _sectionClient.initialize();
    s.fold(
          (l) {onFailure(); return;},
          (r) => null,
    );
    onSuccess();
  }

  @override
  bool? fromJson(Map<String, dynamic> json) {
    return json['init'] ?? false;
  }

  @override
  Map<String, dynamic>? toJson(bool state) {
    return {
      'init': state,
    };
  }
}

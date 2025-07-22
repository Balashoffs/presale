import 'package:presale/src/data/clients/v1/employee_client.dart';
import 'package:presale/src/data/clients/v1/section_client.dart';
import 'package:presale/src/domain/models/v1/employee/employee.dart';
import 'package:presale/src/domain/models/v1/section/section.dart';
import 'package:presale/src/domain/models/v1/service_stage/service_stage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SectionInputCubit extends Cubit<List<Section>> {
  final SectionClient _client;
  final EmployeeClient _employeeClient;

  SectionInputCubit(
    this._client,
    this._employeeClient,
  ) : super([]);

  void load(String text, ServiceStage stage) async {
    Map<String, Employee>? employeesMap;
    final emp = await _employeeClient.getEmployeesMap();
    emp.fold(
      (l) => null,
      (r) => employeesMap = r,
    );
    _client.getSections(employeesMap).then((successOrFailure) => successOrFailure.fold(
          (failure) {
            emit([]);
          },
          (sections) {
            sections = sections.map((e) => e.loadEmployee(employeesMap)).where((element) => element.name.toLowerCase().contains(text.toLowerCase())).toList();
            if (stage == ServiceStage.both) {
              emit(sections);
              return;
            }
            sections = sections.where((element) => element.stage == stage).toList();
            // canLoadMore = sections.length == _count;
            emit(sections);
          },
        ));
  }
}

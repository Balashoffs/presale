import 'dart:typed_data';

import 'package:presale/src/data/clients/v1/employee_client.dart';
import 'package:presale/src/domain/models/v1/employee/employee.dart';
import 'package:presale/src/presentation/bloc/core/core/bloc_mixin.dart';
import 'package:presale/src/presentation/bloc/core/core/repository_state.dart';

typedef EmployeeRepositoryState = RepositoryState<List<Employee>>;

class EmployeeRepository extends Repository<List<Employee>> with StateMixin {
  final EmployeeClient _client;
  int _from;
  final int _count;
  bool canLoadMore;
  bool loading;
  bool? _reload;

  EmployeeRepository(
    this._client,
  )   : _from = 0,
        _count = 15,
        canLoadMore = true,
        loading = false,
        super(const UninitializedState());

  void _resetPreferences() {
    canLoadMore = true;
    _from = 0;
  }

  void loadMore() {
    if (isLoadingState) return;
    _from += _count;
    load(
      add: true,
      reload: false,
    );
  }

  void markReload() => _reload = true;

  void load({
    bool add = false,
    bool reload = true,
    bool update = false,
  }) async {
    // if (!(_reload ?? reload) && model != null) return;
    if (!add) loading = true;
    if (reload) _from = 0;
    setLoadingState();
    _client.getEmployees().then((successOrFailure) => successOrFailure.fold(
          (failure) {
            setFailureState(failure);
          },
          (employees) {
            // canLoadMore = employees.length == _count;
            emit(SuccessState(employees));
            loading = false;
            _reload = null;
          },
        ));
  }

  void loadData(Uint8List data) {
    _client.loadEmployeesFromExcel(data).then((value) => value.fold(
          (l) => null,
          (r) => null,
        ));
  }

  void changeEmployeeSalary(int index, double salary) {
    var employees = [...?state.model];
    final oldEmployee = employees[index];
    Employee newEmployee = oldEmployee.copyWith(salary: salary);
  }

// List<AppNotification> deleteDuplicates(List<AppNotification> newNotifications, {List<AppNotification>? oldNotifications}) {
//   AppNotification? lastNotification;
//   List<AppNotification>? employees = oldNotifications ?? model;
//   if (employees?.isNotEmpty ?? false) {
//     lastNotification = employees!.last;
//   }
//   if (lastNotification == null) return newNotifications;
//   var sameModels = [
//     ...newNotifications.where((element) => element.uuid == lastNotification!.uuid)
//   ];
//   for (var item in sameModels) {
//     newNotifications.remove(item);
//   }
//   return [...?employees, ...newNotifications];
// }
}

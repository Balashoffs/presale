
import 'package:presale/src/data/clients/v1/employee_client.dart';
import 'package:presale/src/data/clients/v1/section_client.dart';
import 'package:presale/src/domain/models/v1/employee/employee.dart';
import 'package:presale/src/domain/models/v1/section/section.dart';
import 'package:presale/src/presentation/bloc/core/core/bloc_mixin.dart';
import 'package:presale/src/presentation/bloc/core/core/repository_state.dart';

typedef SectionRepositoryState = RepositoryState<List<Section>>;

class SectionRepository extends Repository<List<Section>> with StateMixin{
  final SectionClient _client;
  final EmployeeClient _employeeClient;
  int _from;
  final int _count;
  bool canLoadMore;
  bool loading;
  bool? _reload;

  SectionRepository(
      this._client,
      this._employeeClient,
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
    _from+=_count;
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
    Map<String, Employee>? employeesMap;
    final emp = await _employeeClient.getEmployeesMap();
    emp.fold((l) => null, (r) => employeesMap = r,);
    _client
        .getSections(
      employeesMap
    )
        .then((successOrFailure) => successOrFailure.fold(
          (failure) {
        setFailureState(failure);
      },
          (sections) {
            sections = sections.map((e) => e.loadEmployee(employeesMap)).toList();
        // canLoadMore = sections.length == _count;
        emit(SuccessState(sections));
        loading = false;
        _reload = null;
      },
    ));
  }

// List<AppNotification> deleteDuplicates(List<AppNotification> newNotifications, {List<AppNotification>? oldNotifications}) {
//   AppNotification? lastNotification;
//   List<AppNotification>? sections = oldNotifications ?? model;
//   if (sections?.isNotEmpty ?? false) {
//     lastNotification = sections!.last;
//   }
//   if (lastNotification == null) return newNotifications;
//   var sameModels = [
//     ...newNotifications.where((element) => element.uuid == lastNotification!.uuid)
//   ];
//   for (var item in sameModels) {
//     newNotifications.remove(item);
//   }
//   return [...?sections, ...newNotifications];
// }

}

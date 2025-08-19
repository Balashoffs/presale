import 'package:dart_seq/dart_seq.dart';
import 'package:dart_seq_http_client/dart_seq_http_client.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:presale/src/data/clients/v1/employee_client.dart';
import 'package:presale/src/data/clients/v1/section_client.dart';
import 'package:presale/src/data/core/db_client.dart';
import 'package:presale/src/data/data_sources/v1/employee_cost_data_source.dart';
import 'package:presale/src/data/data_sources/v1/section_data_source.dart';

import 'package:presale/src/di/app_config/app_config.dart';
import 'package:presale/src/domain/data/data_cubit.dart';
import 'package:presale/src/presentation/bloc/auth/auth_cubit.dart';
import 'package:presale/src/presentation/bloc/core/core/global_bloc_observer.dart';
import 'package:presale/src/presentation/bloc/core/navigation/navigation_cubit.dart';
import 'package:presale/src/presentation/bloc/core/theme_cubit/theme_cubit.dart';
import 'package:presale/src/presentation/bloc/employee_repository.dart';
import 'package:presale/src/presentation/bloc/object_table_page/cubit.dart';
import 'package:presale/src/presentation/bloc/section_repository.dart';
import 'package:presale/src/presentation/bloc/stages_table_page/cubit.dart';
import 'package:presale/src/presentation/bloc/user/user_repository.dart';
import 'package:presale/src/presentation/core/navigation/app_router.dart';
import 'package:presale/src/presentation/core/services/theme_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

const di = DependencyInjector();

class DependencyInjector {
  const DependencyInjector();

  static final _getItInstance = GetIt.instance;

  final FlutterSecureStorage flutterAuthSecureStorage =
      const FlutterSecureStorage(
    wOptions: WindowsOptions(useBackwardCompatibility: true),
    mOptions: MacOsOptions(),
    webOptions: WebOptions(
      dbName: 'Auth',
    ),
    aOptions: AndroidOptions(
      storageCipherAlgorithm: StorageCipherAlgorithm.AES_GCM_NoPadding,
      resetOnError: true,
    ),
  );

  Future<void> init() async {
    await _registerDBClient();
    await _setupStorageAndObserver();
    await _initSegClient();
  }

  Future<void> _initSegClient()async{
    SeqLogger logger = SeqHttpLogger.create(

      host: 'http://localhost:5341',
      globalContext: {
        'App': 'PresaleCalc',
      },
    );
    _getItInstance.registerSingleton<SeqLogger>(logger);
  }

  Future<void> initConfig() async {
    await _registerAppConfig();
  }

  Future<void> _registerAppConfig() async {
    final appConfig = await AppConfig.load();

    _getItInstance.registerSingleton<AppConfig>(appConfig);
  }


  void _registerThemeService() =>
      _getItInstance.registerSingleton<ThemeService>(
          ThemeService(_getItInstance<DBClient>()));

  Future<void> _registerDBClient() async {
    final preferences = await SharedPreferences.getInstance();

    _getItInstance
        .registerLazySingleton<DBClient>(() => DBClientImpl(preferences));
  }

  Future<void> _registerLocalNotifications() async {}

  Future<void> _registerApiClients() async {}

  void _registerDataSources() {
    _getItInstance
        .registerSingleton<EmployeeDataSource>(EmployeeDataSourceLocal(
      _getItInstance<DBClient>(),
    ));

    _getItInstance.registerSingleton<SectionDataSource>(SectionDataSourceLocal(
      _getItInstance<DBClient>(),
    ));
  }

  void _registerClients() {
    _getItInstance.registerSingleton<EmployeeClient>(EmployeeClientImpl(
      _getItInstance<EmployeeDataSource>(),
    ));

    _getItInstance.registerSingleton<SectionClient>(SectionClientImpl(
      _getItInstance<SectionDataSource>(),
    ));
  }

  Future<void> _setupStorageAndObserver() async {
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorageDirectory.web
          : HydratedStorageDirectory((await getTemporaryDirectory()).path),
    );

    Bloc.observer = GlobalBlocObserver();
  }

  void _registerBlocs() {
    /// Appearance
    final themeBloc = ThemeCubit()..themeLoad();
    _getItInstance.registerFactory<ThemeCubit>(() => themeBloc);

    /// Localization

    _getItInstance.registerSingleton<DataCubit>(DataCubit(
      _getItInstance<EmployeeClient>(),
      _getItInstance<SectionClient>(),
    ));

    /// User
    _getItInstance.registerSingleton<AuthCubit>(
      AuthCubit(),
    );

    _getItInstance.registerSingleton<UserRepository>(
      UserRepository(),
    );

    /// Navigation
    _getItInstance.registerSingleton<NavigationCubit>(
      NavigationCubit(
        _getItInstance<UserRepository>(),
        _getItInstance<AppRouter>(),
      ),
    );

    /// Employees
    _getItInstance.registerSingleton<EmployeeRepository>(
      EmployeeRepository(
        _getItInstance<EmployeeClient>(),
      ),
    );

    _getItInstance.registerSingleton<SectionRepository>(
      SectionRepository(
        _getItInstance<SectionClient>(),
        _getItInstance<EmployeeClient>(),
      ),
    );

    _getItInstance.registerSingleton<ObjectTableCubit>(
      ObjectTableCubit(),
    );

    _getItInstance.registerSingleton<StagesTableCubit>(
      StagesTableCubit(
        _getItInstance<ObjectTableCubit>(),
      ),
    );
  }



  /// Core

  AppConfig get appConfig => _getItInstance<AppConfig>();

  ThemeService get themeService => _getItInstance<ThemeService>();

  ThemeCubit get themeBloc => _getItInstance<ThemeCubit>();

  NavigationCubit get navigationCubit => _getItInstance<NavigationCubit>();


  DataCubit get dataCubit => _getItInstance<DataCubit>();

  /// Auth
  AuthCubit get authCubit => _getItInstance<AuthCubit>();

  UserRepository get userRepository => _getItInstance<UserRepository>();

  /// Employee
  EmployeeRepository get employeeRepository =>
      _getItInstance<EmployeeRepository>();

  EmployeeClient get employeeClient => _getItInstance<EmployeeClient>();

  SectionClient get sectionClient => _getItInstance<SectionClient>();

  SectionRepository get sectionRepository =>
      _getItInstance<SectionRepository>();

  ObjectTableCubit get objectTableCubit => _getItInstance<ObjectTableCubit>();
  SeqLogger get segLogger => _getItInstance<SeqLogger>();

  StagesTableCubit get stagesTableCubit => _getItInstance<StagesTableCubit>();

  DBClient get dbClientImpl => _getItInstance<DBClient>();



}

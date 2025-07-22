import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config.freezed.dart';

part 'app_config.g.dart';

@freezed
class AppConfig with _$AppConfig {
  const AppConfig._();

  const factory AppConfig({
    required String password,
  }) = _AppConfig;

  factory AppConfig.fromJson(Map<String, dynamic> json) => _$AppConfigFromJson(json);

  static Future<AppConfig> load() async {
    try {
      // await dotenv.load(fileName: 'assets/.env');
      // final env = {...dotenv.env};

      return AppConfig(
        password: '1289',
      );
    } catch (e) {
      return const AppConfig(
        password: '1289',
      );
    }
  }

}

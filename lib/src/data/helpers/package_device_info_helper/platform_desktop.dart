import 'dart:io';

import 'package:dart_seq/dart_seq.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:presale/src/di/di.dart';

void getPackageDeviceInfo(SeqLogger seqLogger) async {
  final info = await PackageInfo.fromPlatform();
  await seqLogger.log(SeqLogLevel.information, info.toString(), null, {
    'Timestamp': DateTime.now().toUtc().toIso8601String(),
  });

  String deviceInfoS = '';
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  if (Platform.isAndroid) {
    deviceInfoS = await deviceInfo.androidInfo.toString();
  } else if (Platform.isMacOS) {
    MacOsDeviceInfo macOsDeviceInfo = await deviceInfo.macOsInfo;
    deviceInfoS = macOsDeviceInfo.data.entries
        .map((e) => '${e.key}: ${e.value}')
        .join(',');
  } else if (Platform.isIOS) {
    deviceInfoS = await deviceInfo.iosInfo.toString();
  } else if (Platform.isWindows) {
    deviceInfoS = await deviceInfo.windowsInfo.toString();
  } else {
    deviceInfoS = await deviceInfo.webBrowserInfo.toString();
  }

  await di.segLogger.log(SeqLogLevel.information, deviceInfoS, null, {
    'Timestamp': DateTime.now().toUtc().toIso8601String(),
  });
  await di.segLogger.flush();
}

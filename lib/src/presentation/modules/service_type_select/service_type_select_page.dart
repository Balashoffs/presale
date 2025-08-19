import 'dart:io';

import 'package:dart_seq/dart_seq.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moon_design/moon_design.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:presale/src/di/di.dart';

import 'package:presale/src/presentation/common/typography_page_options.dart';
import 'package:presale/src/presentation/modules/v5/design/navi/service_navi.dart';

class ServiceTypeSelectPage extends StatefulWidget {
  const ServiceTypeSelectPage({super.key});

  @override
  State<ServiceTypeSelectPage> createState() => _ServiceTypeSelectPageState();
}

class _ServiceTypeSelectPageState extends State<ServiceTypeSelectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 320),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Выберите тип задачи для рассчета',
                  style: getHeadingTextStyle(context, MoonTextSize.size16),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 28),
                MoonButton(
                  onTap: () {
                    context.go(designInputRoute);
                    // context.go(designResourcesRoute);
                    // context.go(designOfferRoute);
                  },
                  label: Text('Стоимость проектирования'),
                ),
                // const SizedBox(
                //   height: 8,
                // ),
                // MoonButton(
                //   onTap: () {
                //     context.go(inputGoRoutePath);
                //   },
                //   label: Text('Стоимость реализации'),
                // ),
                // const SizedBox(
                //   height: 8,
                // ),
                // MoonButton(
                //   onTap: () {
                //     // onConfirmed();
                //   },
                //   label: Text('Стоимость ПНР'),
                // ),
                // const SizedBox(
                //   height: 8,
                // ),
                // MoonButton(
                //   onTap: () {
                //
                //   },
                //   label: Text('Стоимость ПО'),
                // ),
                // const SizedBox(
                //   height: 16,
                // ),
                // MoonButton(
                //   height: 64,
                //   width: 64,
                //   onTap: () {
                //     context.go(employeesViewerRoutePath);
                //   },
                //   label: Text('Просмотр данных'),
                // ),
                // MoonButton(
                //   height: 64,
                //   width: 64,
                //   onTap: () {
                //     di.userRepository.logOut();
                //   },
                //   label: Text('Выйти'),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _initPackageInfo();
  }

  void _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    await di.segLogger.log(SeqLogLevel.information, info.toString(), null, {
      'Timestamp': DateTime.now().toUtc().toIso8601String(),
    });

    String deviceInfoS = '';
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      deviceInfoS = await deviceInfo.androidInfo.toString();
    } else if (Platform.isMacOS) {
      MacOsDeviceInfo macOsDeviceInfo = await deviceInfo.macOsInfo;
      deviceInfoS =macOsDeviceInfo.data.entries.map((e) => '${e.key}: ${e.value}',).join(',');
    }
    else if (Platform.isIOS) {
      deviceInfoS = await deviceInfo.iosInfo.toString();
    }
    else if (Platform.isWindows) {
      deviceInfoS = await deviceInfo.windowsInfo.toString();
    }else{
      deviceInfoS = await deviceInfo.webBrowserInfo.toString();
    }


    await di.segLogger.log(SeqLogLevel.information, deviceInfoS, null, {
      'Timestamp': DateTime.now().toUtc().toIso8601String(),
    });
    await di.segLogger.flush();
  }
}

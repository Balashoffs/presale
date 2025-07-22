import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/di/di.dart';

import 'package:presale/src/domain/models/v1/service_type/service_type.dart';
import 'package:presale/src/presentation/common/typography_page_options.dart';

import 'package:presale/src/presentation/modules/construction/navi/construction_navi.dart';
import 'package:presale/src/presentation/modules/data_viewer/navi/data_viewer_navi.dart';
import 'package:presale/src/presentation/modules/service_type_select/navi/service_navi.dart';
import 'package:presale/src/presentation/modules/v3/design/navi/service_navi.dart';

class ServiceTypeSelectPage extends StatelessWidget {
  const ServiceTypeSelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 320,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Выберите тип задачи для рассчета',
                  style: getHeadingTextStyle(context, MoonTextSize.size16),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 28,
                ),
                MoonButton(
                  onTap: () {
                    context.go('$serviceTypeRoutePath$inputDataRoutePath');
                    // context.go('$serviceTypeRoutePath$divisionCalculateRoutePath');
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
}

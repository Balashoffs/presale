import 'package:moon_design/moon_design.dart';
import 'package:presale/src/domain/models/v1/service_stage/service_stage.dart';
import 'package:presale/src/domain/models/v1/service_type/service_type.dart';
import 'package:presale/src/presentation/common/typography_page_options.dart';

import 'package:presale/src/presentation/modules/service_type_select/navi/service_navi.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class StageSelectPage extends StatelessWidget {
  final ServiceType serviceType;

  const  StageSelectPage({
    super.key,
    required this.serviceType,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          serviceType.text,
        ),
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
                  'Выберите стадию проектирования',
                  style: getBodyTextStyle(context, MoonTextSize.size14),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 28,
                ),
                MoonButton(
                  onTap: () {
                    context.go(
                        '$serviceTypeRoutePath/${ServiceType.design.urlPath}/$objectTableRoutePath');
                  },
                  label: Text('Стадия П'),
                ),
                const SizedBox(
                  height: 8,
                ),
                MoonButton(
                  onTap: () {
                    context.go(
                        '$serviceTypeRoutePath/${ServiceType.design.urlPath}/$stageSelectRoutePath/${ServiceStage.working.urlPath}/$objectTableRoutePath');
                  },
                  label: Text('Стадия РД'),
                ),
                const SizedBox(
                  height: 8,
                ),
                MoonButton(
                  onTap: () {
                    context.go(
                        '$serviceTypeRoutePath/${ServiceType.design.urlPath}/$stageSelectRoutePath/${ServiceStage.both.urlPath}/$objectTableRoutePath');
                  },
                  label: Text('Две стадии')
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:presale/src/presentation/modules/v5/design/common/custom_app_bar.dart';

class ResourceAppBarTitle extends StatelessWidget {
  const ResourceAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextCellWidget(data: 'Итого'),
          TextCellWidget(data: '= \u2211('),
          TextCellWidget(data: 'Ставка'),
          TextCellWidget(data: '*', letterSpacing: 8.0),
          TextCellWidget(data: 'ЧЕЛ'),
          TextCellWidget(data: '*',letterSpacing: 8.0),
          TextCellWidget(data: 'РД'),
          TextCellWidget(data: '*',letterSpacing: 8.0),
          TextCellWidget(data: 'КС'),
          TextCellWidget(data: '*',letterSpacing: 8.0),
          TextCellWidget(data: 'КП'),
          TextCellWidget(data: '*',letterSpacing: 8.0),
          TextCellWidget(data: 'КУ'),
          TextCellWidget(data: ')'),
        ],
      ),
    );
  }
}

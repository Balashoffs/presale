import 'package:flutter/material.dart';
import 'package:presale/src/presentation/modules/v5/design/common/custom_app_bar.dart';

class DivisionAppBarTitle extends StatelessWidget {
  const DivisionAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextCellWidget(data: 'Итого'),
          TextCellWidget(data: '= \u2211('),
          TextCellWidget(data: 'СР'),
          TextCellWidget(data: '*', letterSpacing: 8.0),
          TextCellWidget(data: 'КН'),
          TextCellWidget(data: '*',letterSpacing: 8.0),
          TextCellWidget(data: 'КМ'),
          TextCellWidget(data: '*',letterSpacing: 8.0),
          TextCellWidget(data: 'КК'),
          TextCellWidget(data: '*',letterSpacing: 8.0),
          TextCellWidget(data: 'НДС'),
          TextCellWidget(data: ')'),
        ],
      ),
    );
  }
}

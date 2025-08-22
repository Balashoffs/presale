import 'package:flutter/material.dart';

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

class TextCellWidget extends StatelessWidget {
  const TextCellWidget({
    super.key,
    required this.data,
    this.fontSize = 16.0,
    this.letterSpacing = 0.0,
  });

  final String data;
  final double fontSize;
  final double letterSpacing;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: fontSize, letterSpacing: letterSpacing),
    );
  }
}

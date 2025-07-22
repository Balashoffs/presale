class CollumAttribute {
  final String name;
  final double width;
  final String tooltip;

  CollumAttribute({
    required this.name,
    required this.width,
    required this.tooltip,
  });
}


final List<CollumAttribute> calculateCollumAttributes = [
  CollumAttribute(name: '', width: 64.0, tooltip: ''),
  CollumAttribute(name: 'Наименование', width: 368, tooltip: ''),
  CollumAttribute(name: 'Шифр', width: 88.0, tooltip: 'Шифр Раздела'),
  CollumAttribute(name: 'КпС', width: 88.0, tooltip: 'Коэфициент за сложность раздела'),
  CollumAttribute(name: 'КпП', width: 88.0, tooltip: 'Коэфициент по площади'),
  CollumAttribute(name: 'КИС', width: 88.0, tooltip: 'Коэфициент использования специалиста'),
  CollumAttribute(name: 'Сроки', width: 96.0, tooltip: 'Срок выполнения работ'),
  CollumAttribute(name: 'Ставка', width: 128.0, tooltip: 'Ставка специалиста (за один день)'),
  CollumAttribute(name: 'Стомость', width: 128.0, tooltip: 'Чистая стоимость за раздел'),
  CollumAttribute(name: 'Расходы', width: 88.0, tooltip: 'Накладные расходы при проектировании (от 1% до 15%)'),
  CollumAttribute(name: 'Маржа', width: 88.0, tooltip: ''),
  CollumAttribute(name: 'Итого с НДС', width: 196.0, tooltip: 'Стоимость за раздел вместе с расходами, маржой и НДС')
];
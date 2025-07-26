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


final List<CollumAttribute> divisionTableAttributes = [
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


final List<CollumAttribute> divisionResourceTableAttributes = [
  CollumAttribute(name: '', width: 64.0, tooltip: ''),
  CollumAttribute(name: 'Шифр', width: 64, tooltip: ''),
  CollumAttribute(name: 'Раздел', width: 312, tooltip: ''),
  CollumAttribute(name: 'Ресурс', width: 312.0, tooltip: 'Должность специалиста'),
  CollumAttribute(name: 'Кол-во', width: 88.0, tooltip: 'Количество сотрудников'),
  CollumAttribute(name: 'За день', width: 88.0, tooltip: 'Ставка в день'),
  CollumAttribute(name: 'Дни', width: 88.0, tooltip: 'Рабочие дни'),
  CollumAttribute(name: 'КС', width: 96.0, tooltip: 'Коэфициент по сложности'),
  CollumAttribute(name: 'КП', width: 128.0, tooltip: 'Коэфициент по площади'),
  CollumAttribute(name: 'Участие', width: 128.0, tooltip: 'Коэфициент участия'),
  CollumAttribute(name: 'Итого', width: 128.0, tooltip: 'Итого по конкретной должности'),
];

final List<CollumAttribute> divisionMarginTableAttributes = [
  CollumAttribute(name: 'Наименование', width: 368, tooltip: ''),
  CollumAttribute(name: 'Себестоимость', width: 88.0, tooltip: 'Себестоимость раздела'),
  CollumAttribute(name: 'Накладные', width: 88.0, tooltip: 'Накладные расходы'),
  CollumAttribute(name: 'Наценка', width: 88.0, tooltip: 'Маржинальность'),
  CollumAttribute(name: 'Итого', width: 88.0, tooltip: 'Итого стоимость, без НДС'),
  CollumAttribute(name: 'с НДС', width: 88.0, tooltip: 'Стоимость по разделу с НДС'),

];
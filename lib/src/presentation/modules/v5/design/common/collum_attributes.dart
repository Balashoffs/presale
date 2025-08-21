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


final List<CollumAttribute> divisionResourceTableAttributes = [
  CollumAttribute(name: '', width: 64.0, tooltip: ''),
  CollumAttribute(name: 'Шифр', width: 64, tooltip: ''),
  CollumAttribute(name: 'Раздел*', width: 312, tooltip: ''),
  CollumAttribute(
    name: 'Ресурс*',
    width: 256.0,
    tooltip: 'Должность специалиста',
  ),
  CollumAttribute(name: 'За день', width: 128, tooltip: 'Ставка в день'),
  CollumAttribute(
    name: 'Кол-во*',
    width: 88.0,
    tooltip: 'Количество сотрудников',
  ),
  CollumAttribute(name: 'Дни*', width: 72.0, tooltip: 'Рабочие дни'),
  CollumAttribute(name: 'КС', width: 72.0, tooltip: 'Коэфициент по сложности'),
  CollumAttribute(name: 'КП', width: 72.0, tooltip: 'Коэфициент по площади'),
  CollumAttribute(name: 'Участие', width: 72.0, tooltip: 'Коэфициент участия'),
  CollumAttribute(
    name: 'Итого',
    width: 256.0,
    tooltip: 'Итого по конкретной должности',
  ),
];

final List<CollumAttribute> divisionMarginTableAttributes = [
  CollumAttribute(name: '№', width: 64, tooltip: ''),
  CollumAttribute(name: 'Шифр', width: 64, tooltip: ''),
  CollumAttribute(name: 'Раздел', width: 368, tooltip: ''),
  CollumAttribute(
    name: 'Себестоимость',
    width: 196.0,
    tooltip: 'Себестоимость раздела',
  ),
  CollumAttribute(
    name: 'Накладные',
    width: 96.0,
    tooltip: 'Накладные расходы',
  ),
  CollumAttribute(name: 'Наценка', width: 96.0, tooltip: 'Маржинальность'),
  CollumAttribute(name: 'Клиент', width: 96.0, tooltip: 'Процент Клиента'),
  CollumAttribute(
    name: 'Итого',
    width: 196.0,
    tooltip: 'Итого стоимость, без НДС',
  ),
  CollumAttribute(
    name: 'с НДС',
    width: 196.0,
    tooltip: 'Стоимость по разделу с НДС',
  ),
];

final List<CollumAttribute> designOfferTableAttribute = [
  CollumAttribute(name: '№', width: 64.0, tooltip: 'Порядковый номер'),
  CollumAttribute(name: 'Шифр', width: 96.0, tooltip: 'Шифр Раздела'),
  CollumAttribute(
    name: 'Наименование',
    width: double.nan,
    tooltip: 'Наименование раздела'
  ),
  CollumAttribute(
    name: 'Стоимость с НДС',
    width: 312,
    tooltip: 'Стоимость с НДС (Итог для раздела)'
  ),
];

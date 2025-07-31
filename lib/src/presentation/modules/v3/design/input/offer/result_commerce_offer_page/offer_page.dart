import 'dart:math';

import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/presentation/common/color_options.dart';

class DesignOfferPage extends StatelessWidget {
  const DesignOfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: OfferPage(),
    );
  }
}



class CollumAttribute {
  final String name;
  final double width;
  final String tooltip;

  CollumAttribute({
    required this.name,
    required this.width,
    required this.tooltip,
  });

  static List<CollumAttribute> generate() {
    return [
      CollumAttribute(name: '№', width: 64.0, tooltip: 'Порядковый номер'),
      CollumAttribute(name: 'Наименование', width: 1024.0, tooltip: 'Наименование раздела'),
      CollumAttribute(name: 'Шифр', width: 96.0, tooltip: 'Шифр Раздела'),
      CollumAttribute(name: 'Сроки', width: 128.0, tooltip: 'Срок выполнения работ'),
      CollumAttribute(name: 'Стоимость с НДС', width: 128.0, tooltip: 'Стоимость с НДС (Итог для раздела)')
    ];
  }
}

List<CollumAttribute> collumAttributes = CollumAttribute.generate();

class OfferPage extends StatefulWidget {
  static const path = '/composites/offer_page_story';

  const OfferPage({super.key});

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  late final List<_TableData> _tableDataOriginal;

  List<_TableData> _generateTableData() {
    return List<_TableData>.generate(
      50,
      (int index) => _TableData.generateTestInstance(),
    );
  }

  void _scrollListener(ScrollController verticalScrollController) {
    verticalScrollController.addListener(() {
      if (verticalScrollController.hasClients) {
        final double pixels = verticalScrollController.position.pixels;
        final double maxScrollExtent = verticalScrollController.position.maxScrollExtent;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _tableDataOriginal = _generateTableData();
  }

  Widget _buildHeaderCell(CollumAttribute attribute) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {}, // Optional tap handler
          child: Tooltip(
            message: attribute.tooltip,
            child: Text(
              textAlign: TextAlign.center,
              attribute.name,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTextCell(dynamic label) {
    return Center(
      child: DecoratedBox(
        decoration: const BoxDecoration(),
        child: Padding(
          padding: const EdgeInsetsDirectional.all(8.0),
          child: Text(
            textAlign: TextAlign.center,
            label.toString(),
          ),
        ),
      ),
    );
  }

  Widget _buildColumnCell(List<String> strings) {
    return Expanded(
      child: Column(
        children: [
          Center(
            child: Text(
              textAlign: TextAlign.center,
              strings[0],
            ),
          ),
          Center(
            child: Text(
              textAlign: TextAlign.center,
              strings[1],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextInputCell(dynamic label) {
    return Center(
      child: Padding(
        padding: const EdgeInsetsDirectional.all(8.0),
        child: MoonTextInput(
          textAlign: TextAlign.center,
          hintText: label.toString(),
        ),
      ),
    );
  }

  Widget _buildCellWithIcon(Widget widget, VoidCallback onRemove) {
    return DecoratedBox(
      decoration: const BoxDecoration(),
      child: Padding(
        padding: const EdgeInsetsDirectional.all(8.0),
        child: MoonButton.icon(
          icon: widget,
          onTap: onRemove,
        ),
      ),
    );
  }

  Widget _buildCellWithMultiLine(dynamic label) {
    return DecoratedBox(
      decoration: const BoxDecoration(),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(end: 16.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            label.toString(),
            maxLines: 3,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(),
          ),
        ),
      ),
    );
  }

  MoonTableHeader _generateTableHeader() {
    return MoonTableHeader(
      height: 36,
      columns: List.generate(
        collumAttributes.length,
        (int index) {
          return MoonTableColumn(
            width: collumAttributes[index].width,
            cell: _buildHeaderCell(
              collumAttributes[index],
            ),
          );
        },
      ),
    );
  }

  List<MoonTableRow> _generateTableRows() {
    return List.generate(
      50,
      (int index) {
        final row = _tableDataOriginal[index];
        return MoonTableRow(
          height: 48,
          cells: [
            _buildTextCell(row.index),
            _buildCellWithMultiLine(row.divisionName),
            _buildTextCell(row.divisionShortName),
            _buildTextCell(row.deadline),
            _buildTextCell(row.summaryWithTax),
          ],
        );
      },
    );
  }

  MoonTableFooter _generateTableFooter() {
    return MoonTableFooter(
      cells: List.generate(
        collumAttributes.length,
        (int index) {
          if (index == 3)
            return _buildColumnCell(ResultData.generate()
                .map(
                  (e) => e.name.toString(),
                )
                .toList());
          if (index == 4)
            return _buildColumnCell(ResultData.generate()
                .map(
                  (e) => e.value.toString(),
                )
                .toList());
          // else  return _buildColumnCell(['-', '-']);
          return _buildColumnCell(['', '']);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      child: CustomScrollView(
        primary: true,
        shrinkWrap: true,
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 9 / 20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MoonMenuItem(
                        label: Text(
                          "Дата создания",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        content: Text(
                          "${DateTime.now()}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      MoonMenuItem(
                        label: Text(
                          "Название объекта",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        content: MoonTextArea(
                          controller: TextEditingController.fromValue(
                            TextEditingValue(
                              text:
                                  "БОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТ",
                            ),
                          ),
                          textAlign: TextAlign.start,
                          minLines: 3,
                          height: 72,
                        ),
                      ),
                      MoonMenuItem(
                        label: Text(
                          "Адрес объекта",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        content: MoonTextArea(
                          controller: TextEditingController.fromValue(
                            TextEditingValue(
                              text:
                                  "БОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТБОЛЬШОЙ ОБЪЕКТ",
                            ),
                          ),
                          textAlign: TextAlign.start,
                          minLines: 2,
                          height: 96,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 15 / 20,
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 16.0,
                  bottom: 42.0,
                ),
                child: OverflowBox(
                  child: MoonTable(
                    columnsCount: collumAttributes.length,
                    isHeaderPinned: true,
                    // isFooterPinned: true,
                    rowGap: 8.0,
                    rowSize: MoonTableRowSize.md,
                    header: _generateTableHeader(),
                    rows: _generateTableRows(),
                    footer: _generateTableFooter(),
                    tablePadding: const EdgeInsets.symmetric(horizontal: 16),
                    cellPadding: const EdgeInsets.symmetric(
                      vertical: 2,
                    ),
                    onScrollControllersReady: (
                      ScrollController verticalScrollController,
                      ScrollController horizontalScrollController,
                    ) =>
                        _scrollListener(verticalScrollController),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: HandleInputForm(),
          ),
          SliverToBoxAdapter(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MoonMenuItem(
                  width: 250,
                  label: Text(
                    "Итого (Для внутреннего)",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  content: MoonTextArea(
                    height: 48,
                    textAlign: TextAlign.start,
                    controller: TextEditingController.fromValue(TextEditingValue(text: '1000000000')),
                  ),
                ),
                MoonMenuItem(
                  width: 250,
                  label: Text(
                    "Итого (Для заказчика)",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  content: MoonTextArea(
                    height: 48,
                    textAlign: TextAlign.start,
                    controller: TextEditingController.fromValue(TextEditingValue(text: '1000000000')),


                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HandleInputForm extends StatefulWidget {
  const HandleInputForm({super.key});

  @override
  State<HandleInputForm> createState() => _HandleInputFormState();
}

class _HandleInputFormState extends State<HandleInputForm> {
  final TextEditingController _additionalInformationController = TextEditingController();
  final TextEditingController _finalDeadLineController = TextEditingController();
  final TextEditingController _advancePaymentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Builder(
        builder: (BuildContext context) {
          return Column(
            children: [
              MoonFormTextInput(
                maxLines: 3,
                height: 36 * 3,
                controller: _additionalInformationController,
                textInputSize: MoonTextInputSize.md,
                hasFloatingLabel: false,
                textColor: colorTable(context)[40],
                hintTextColor: colorTable(context)[40],
                backgroundColor: colorTable(context)[40],
                activeBorderColor: colorTable(context)[40],
                inactiveBorderColor: colorTable(context)[40],
                hoverBorderColor: colorTable(context)[40],
                errorColor: colorTable(context)[40],
                borderRadius: BorderRadius.circular(8.toDouble()),
                hintText: "Поле для примечаний",
                onTapOutside: (PointerDownEvent _) => FocusManager.instance.primaryFocus?.unfocus(),
                trailing: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    child: const Icon(
                      MoonIcons.controls_close_small_32_regular,
                      size: 32,
                    ),
                    onTap: () => _additionalInformationController.clear(),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  SizedBox(
                    child: Text("Сроки проведения работ, дн."),
                    width: 250,
                  ),
                  MoonFormTextInput(
                    controller: _finalDeadLineController,
                    textInputSize: MoonTextInputSize.md,
                    width: 100,
                    hintText: '100',
                    textColor: colorTable(context)[40],
                    hintTextColor: colorTable(context)[40],
                    backgroundColor: colorTable(context)[40],
                    activeBorderColor: colorTable(context)[40],
                    inactiveBorderColor: colorTable(context)[40],
                    hoverBorderColor: colorTable(context)[40],
                    errorColor: colorTable(context)[40],
                    borderRadius: BorderRadius.circular(8.toDouble()),
                    validator: (String? value) =>
                        value != null && RegExp(r'^[0-9]+$').hasMatch(value) ? null : 'Только цифры',
                    onTapOutside: (PointerDownEvent _) => FocusManager.instance.primaryFocus?.unfocus(),
                    trailing: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        child: const Icon(
                          MoonIcons.controls_close_small_24_light,
                          size: 24,
                        ),
                        onTap: () => _finalDeadLineController.clear(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  SizedBox(
                    child: Text("Авансирование, рубл."),
                    width: 250,
                  ),
                  MoonFormTextInput(
                    controller: _advancePaymentController,
                    textInputSize: MoonTextInputSize.md,
                    hasFloatingLabel: false,
                    width: 200,
                    hintText: '10000000',
                    textColor: colorTable(context)[40],
                    hintTextColor: colorTable(context)[40],
                    backgroundColor: colorTable(context)[40],
                    activeBorderColor: colorTable(context)[40],
                    inactiveBorderColor: colorTable(context)[40],
                    hoverBorderColor: colorTable(context)[40],
                    errorColor: colorTable(context)[40],
                    borderRadius: BorderRadius.circular(8.toDouble()),
                    validator: (String? value) =>
                        value != null && RegExp(r'^[0-9]+$').hasMatch(value) ? null : 'Только цифры',
                    onTapOutside: (PointerDownEvent _) => FocusManager.instance.primaryFocus?.unfocus(),
                    trailing: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        child: const Icon(
                          MoonIcons.controls_close_small_24_light,
                          size: 24,
                        ),
                        onTap: () => _advancePaymentController.clear(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  SizedBox(
                    child: Text('Подготовил'),
                    width: 250,
                  ),
                  DropdownWidget(),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MoonButton(
                    showBorder: true,
                    label: const Text("Сохранить в файл"),
                    onTap: () => Form.of(context).validate(),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

class _TableData {
  final int index;
  final String divisionName;
  final String divisionShortName;
  final int deadline;
  final double summaryWithTax;

  _TableData({
    required this.index,
    required this.divisionName,
    required this.divisionShortName,
    required this.deadline,
    required this.summaryWithTax,
  });

  static _TableData generateTestInstance() {
    return _TableData(
      index: Random().nextInt(100),
      divisionName: "Конструктивные решения. Железобетонные конструкции",
      divisionShortName: "КЖ",
      deadline: 365,
      summaryWithTax: 10000000,
    );
  }
}

class ResultData {
  final String name;
  final String fullName;
  final double value;

  ResultData({
    required this.name,
    required this.value,
    required this.fullName,
  });

  static List<ResultData> generate() {
    return [
      ResultData(name: 'Итого с НДС', fullName: 'сумма всех стоимтостей разделов', value: 1000.0),
      ResultData(name: 'НДС', fullName: 'сумма всех стоимтостей разделов * 20  / 120', value: 1000.0),
    ];
  }
}

/*
Технический директор
ООО «ЛИИС Инженерные решения»
Шлыков Дмитрий Сергеевич
Телефон  +7 921 984 09 86
email: sds@liis.su
   */
class PersonSign {
  final int index;
  final String fistName;
  final String secondName;
  final String lastName;
  final String jobTitle;
  final String companyTitle;
  final String phoneNumber;
  final String jobEmail;
  late final String shortName;

  PersonSign({
    required this.index,
    required this.fistName,
    required this.secondName,
    required this.lastName,
    required this.jobTitle,
    required this.companyTitle,
    required this.phoneNumber,
    required this.jobEmail,
  }) {
    shortName = '$lastName ${fistName[0]}. ${secondName[0]}.';
  }

  static Map<String, PersonSign> generate() {
    final List<PersonSign> list = [
      PersonSign(
        index: 0,
        fistName: 'Дмитрий',
        secondName: 'Сергеевич',
        lastName: 'Шлыков',
        jobTitle: 'Технический директор',
        companyTitle: 'ООО «ЛИИС Инженерные решения»',
        phoneNumber: '+7(921) 984 09 86',
        jobEmail: 'sds@liis.su',
      ),
    ];
    return list.fold<Map<String, PersonSign>>({}, (map, person) {
      map[person.shortName] = person;
      return map;
    });
  }
}

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({super.key});

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  bool _showChoices = false;
  String selected = "Выбрать подписанта";

  @override
  Widget build(BuildContext context) {
    return MoonDropdown(
      dropdownAnchorPosition: MoonDropdownAnchorPosition.top,
      show: _showChoices,
      minWidth: 250,
      constrainWidthToChild: true,
      onTapOutside: () => setState(() => _showChoices = false),
      content: ClipRRect(
        borderRadius: BorderRadius.zero,
        child: Column(
          children: List.generate(
            1,
            (int index) => MoonMenuItem(
              absorbGestures: true,
              onTap: () => setState(
                () {
                  selected = PersonSign.generate()
                      .entries
                      .firstWhere(
                        (element) => element.value.index == index,
                      )
                      .key;
                  _showChoices = !_showChoices;
                },
              ),
              label: Text(
                PersonSign.generate()
                    .entries
                    .firstWhere(
                      (element) => element.value.index == index,
                    )
                    .key,
              ),
            ),
          ),
        ),
      ),
      child: MoonTextInput(
        width: 270,
        readOnly: true,
        canRequestFocus: false,
        mouseCursor: MouseCursor.defer,
        hintText: selected,
        onTap: () => setState(() => _showChoices = !_showChoices),
        onTapOutside: (PointerDownEvent _) => FocusManager.instance.primaryFocus?.unfocus(),
        trailing: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Center(
            child: AnimatedRotation(
              duration: const Duration(milliseconds: 200),
              turns: _showChoices ? -0.5 : 0,
              child: const Icon(
                MoonIcons.controls_chevron_down_16_light,
                size: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

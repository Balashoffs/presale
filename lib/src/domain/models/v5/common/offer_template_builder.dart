import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:presale/src/data/common/extensions/date.dart';
import 'package:presale/src/domain/models/v3/design/commercial_offer/commercial_offer.dart';
import 'package:presale/src/domain/models/v3/design/division_result/division_result.dart';
import 'package:syncfusion_flutter_xlsio/xlsio.dart';

class DesignOfferTemplateBuilder {
  final CommercialOfferResult _offerResult;
  final Worksheet _worksheet;
  int _rowPos = 1;

  DesignOfferTemplateBuilder({
    required Worksheet worksheet,
    required CommercialOfferResult offerResult,
  }) : _offerResult = offerResult,
       _worksheet = worksheet;

  Future<void> fill() async {
    _increment();
    await _addLogoImg();
    await _addHeaderImg();
    _increment(2);
    _addNote();
    _addDate();
    _increment(2);
    _addTitle();
    _increment();
    _addObjectName();
    _increment();
    _addObjectLocation();
    _increment(2);
    _addTableTitle();
    _increment();
    _addTableHeader();
    _increment();
    _addTableRows();
    _increment();
    _addTableFooter1();
    _increment();
    _addTableFooter2();
    _increment(2);
    _addDeadLine();
    _increment(2);
    _addCompanyJobTitle();
    _increment();
    _addCreaterName();
    _increment();
    _addSignPlace();
    _increment();
    _addText('м.п.');
    print('end');
  }

  List<int> save() {
    return _worksheet.workbook.saveSync();
  }

  void _increment([int i = 1]) {
    _rowPos += i;
  }

  Future<Picture> _addLogoImg() async {
    final imageBytes = await rootBundle
        .load('assets/calculator_data/template/logo.png')
        .then((value) => value.buffer);
    var m = base64.encode(Uint8List.view(imageBytes));
    print(m);
    return _worksheet.pictures.addBase64(_rowPos, 2, m);
  }

  Future<Picture> _addHeaderImg() async {
    final imageBytes = await rootBundle
        .load('assets/calculator_data/template/header.png')
        .then((value) => value.buffer);
    var m = base64.encode(Uint8List.view(imageBytes));
    print(m);
    return _worksheet.pictures.addBase64(_rowPos, 5, m);
  }

  void _addNote() {
    String noteText = 'исх. №${DateTime.now().dateOnly}_XXX';
    _worksheet.getRangeByName("B$_rowPos").setText(noteText);
  }

  void _addDate() {
    DateTime? dateTime = _offerResult.inputDataDesign.created;
    if (dateTime != null) {
      // String dateText =
      //     'дата: ${dateTime.day} ${dateTime.month} ${dateTime.year}';
      _worksheet.getRangeByName("D$_rowPos").setDateTime(dateTime);
    }
  }

  void _addTitle() {
    _rowPos += 2;
    String title = 'Коммерческое предложение';
    _worksheet.getRangeByName('B$_rowPos:D$_rowPos').merge();
    _worksheet.getRangeByName('B$_rowPos:D$_rowPos').cellStyle.hAlign =
        HAlignType.center;
    _worksheet.getRangeByName("B$_rowPos").setText(title);
  }

  void _addObjectName() {
    String objectName = _offerResult.inputDataDesign.objectData.name;

    _worksheet.getRangeByName('B$_rowPos:D$_rowPos').merge();
    _worksheet.getRangeByName('B$_rowPos:D$_rowPos').cellStyle.hAlign =
        HAlignType.left;
    _worksheet.getRangeByName("B$_rowPos").setText('Объект: $objectName');
  }

  void _addObjectLocation() {
    String objectLocation = _offerResult.inputDataDesign.objectData.address;
    _worksheet.getRangeByName('B$_rowPos:D$_rowPos').merge();
    _worksheet.getRangeByName('B$_rowPos:D$_rowPos').cellStyle.hAlign =
        HAlignType.left;
    _worksheet.getRangeByName('B$_rowPos').setText('Адрес: $objectLocation');
  }

  void _addTableTitle() {
    String title = 'Рассчет стоимости';

    _worksheet.getRangeByName('B$_rowPos:D$_rowPos').merge();
    _worksheet.getRangeByName('B$_rowPos:D$_rowPos').cellStyle.hAlign =
        HAlignType.center;
    _worksheet.getRangeByName("B$_rowPos").setText(title);
  }

  void _addTableHeader() {
    _setupCell('№ п/п', 'A$_rowPos', width: 20, alignType: HAlignType.center);
    _setupCell(
      'Наименование услуги',
      'B$_rowPos',
      // width: 1000,
      alignType: HAlignType.center,
    );
    _setupCell('Кол-во', 'C$_rowPos', width: 60, alignType: HAlignType.center);
    _setupCell(
      'Стоимость без НДС',
      'D$_rowPos',
      // width: 100,
      alignType: HAlignType.center,
    );
    _setupCell(
      'Стоимость с НДС',
      'E$_rowPos',
      // width: 100,
      alignType: HAlignType.center,
    );
  }

  void _addTableRows() {
    for (int i = 0; i < _offerResult.divisionResults.length; i++) {
      _increment();
      DivisionResult result = _offerResult.divisionResults[i];
      _setupCell(
        '${result.id}',
        'A$_rowPos',
        // width: 20,
        alignType: HAlignType.center,
      );
      _setupCell(
        result.divisionName,
        'B$_rowPos',
        // width: 1000,
        alignType: HAlignType.center,
      );
      _setupCell('1', 'C$_rowPos', width: 60, alignType: HAlignType.center);
      _setupCell(
        result.divisionSummaryWithTax.toStringAsFixed(2),
        'D$_rowPos',
        // width: 100,
        alignType: HAlignType.center,
      );
      _setupCell(
        result.divisionSummaryWithTax.toStringAsFixed(2),
        'E$_rowPos',
        // width: 100,
        alignType: HAlignType.center,
      );
    }
  }

  void _addTableFooter1() {
    _setupCell(
      'ИТОГО с НДС 20% :',
      'A$_rowPos:D$_rowPos',
      isMerge: true,
      alignType: HAlignType.right,
    );
    _setupCell(
      '${_offerResult.designOfferSummaryCost}',
      'E$_rowPos',
      // width: 100,
      alignType: HAlignType.center,
    );
  }

  void _addTableFooter2() {
    _setupCell(
      'НДС 20%:',
      'A$_rowPos:D$_rowPos',
      isMerge: true,
      alignType: HAlignType.right,
    );
    _setupCell(
      '${_offerResult.designOfferSummaryTax}',
      'E$_rowPos',
      // width: 100,
      alignType: HAlignType.center,
    );
  }

  _setupCell(
    String text,
    String range, {
    bool isMerge = false,
    double? width,
    HAlignType? alignType,
  }) {
    if (isMerge) {
      _worksheet.getRangeByName(range).merge();
    }
    if (width != null) {
      _worksheet.getRangeByName(range).columnWidth = width;
    }
    if (alignType != null) {
      _worksheet.getRangeByName(range).cellStyle.hAlign = alignType;
    }
    _worksheet.getRangeByName(range).setText(text);
  }

  void _addDeadLine() {
    _setupCell(
      'Срок выполнения работ - ${(_offerResult.inputDataDesign.objectData.deadlineValue / 30).round()}',
      'B$_rowPos',
    );
  }

  void _addCompanyJobTitle() {
    _setupCell(
      '${_offerResult.footerData.signPerson.jobTitle} - ${_offerResult.footerData.signPerson.companyName}',
      'B$_rowPos',
    );
  }

  void _addCreaterName() {
    _setupCell(_offerResult.footerData.signPerson.fullName, 'B$_rowPos');
  }

  void _addSignPlace() {
    _setupCell('____________________________', 'B$_rowPos');
  }

  void _addText(String s) {
    _setupCell(s, 'B$_rowPos');
  }
}

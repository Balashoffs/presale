import 'package:presale/src/presentation/bloc/object_table_page/state/state.dart';
import 'package:presale/src/presentation/bloc/stages_table_page/state/state.dart';
import 'package:syncfusion_flutter_xlsio/xlsio.dart';

class ExcelClient {
  static List<int>? generateDiarySheet(StagesTableState stagesState, ObjectTableState objectState) {
    final stages = stagesState.entities;
    if (stages.isEmpty) return null;
    final sumCost = stages.map((e) => e.cost).reduce((value, element) => (value ?? 0) + (element ?? 0)) ?? 0;
    final fullPrice = sumCost*0.2+sumCost;
    final Workbook workbook = Workbook();
    final Worksheet sheet = workbook.worksheets[0];
    sheet.getRangeByIndex(1, 1).setText('Раздел или услуга');
    sheet.getRangeByIndex(1, 2).setText('Стоимость');

    for (int i = 0; i < stages.length; i++) {
      var stage = stagesState.entities[i];
      sheet.getRangeByIndex(i + 2, 1).setText(stage.sectionName);
      sheet.getRangeByIndex(i + 2, 2).setNumber(stage.cost);
      sheet.getRangeByIndex(i + 2, 2).numberFormat = '#,##0.00₽';
    }
    sheet.getRangeByIndex(stages.length + 2, 1).setText('Общий итог');
    sheet.getRangeByIndex(stages.length + 2, 2).setNumber(sumCost);
    sheet.getRangeByIndex(stages.length + 2, 2).numberFormat = '#,##,###0.00₽';


    sheet.getRangeByIndex(stages.length + 5, 1).setText('НДС');
    sheet.getRangeByIndex(stages.length + 5, 2).setNumber(sumCost*0.2);
    sheet.getRangeByIndex(stages.length + 5, 2).numberFormat = '#,##,###0.00₽';

    sheet.getRangeByIndex(stages.length + 6, 1).setText('Сумма с НДС');
    sheet.getRangeByIndex(stages.length + 6, 2).setNumber(fullPrice);
    sheet.getRangeByIndex(stages.length + 6, 2).numberFormat = '#,##,###0.00₽';

    sheet.getRangeByIndex(stages.length + 8, 1).setText('Стоимость работ за метр');
    sheet.getRangeByIndex(stages.length + 8, 2).setNumber(fullPrice/(objectState.square??1));
    sheet.getRangeByIndex(stages.length + 8, 2).numberFormat = '#,##,###0.00₽';

    Style table = workbook.styles.add('table');
    table.fontSize = 11;
    table.backColor = '#FFFFFE';
    // topStyle.fontColor = '#FFFFFF';
    // table.borders.all.lineStyle = LineStyle.none;

    Style topStyle = workbook.styles.add('top');
    topStyle.bold = true;
    topStyle.fontSize = 11;
    topStyle.hAlign = HAlignType.left;
    topStyle.backColor = '#EDE7FE';
    // topStyle.fontColor = '#FFFFFF';
    topStyle.borders.all.lineStyle = LineStyle.none;
    topStyle.borders.bottom.lineStyle = LineStyle.thin;
    topStyle.borders.bottom.color = '#7556D0';

    Style bottomStyleLeft = workbook.styles.add('bottomLeft');
    bottomStyleLeft.bold = true;
    bottomStyleLeft.fontSize = 11;
    bottomStyleLeft.hAlign = HAlignType.left;
    bottomStyleLeft.backColor = '#EDE7FE';
    // topStyle.fontColor = '#FFFFFF';
    bottomStyleLeft.borders.all.lineStyle = LineStyle.none;
    bottomStyleLeft.borders.top.lineStyle = LineStyle.thin;
    bottomStyleLeft.borders.top.color = '#7556D0';

    Style bottomStyleRight = workbook.styles.add('bottomRight');
    bottomStyleRight.bold = true;
    bottomStyleRight.fontSize = 11;
    bottomStyleRight.hAlign = HAlignType.right;
    bottomStyleRight.backColor = '#EDE7FE';
    // topStyle.fontColor = '#FFFFFF';
    bottomStyleRight.borders.all.lineStyle = LineStyle.none;
    bottomStyleRight.borders.top.lineStyle = LineStyle.thin;
    bottomStyleRight.borders.top.color = '#7556D0';

    Style bold = workbook.styles.add('bold');
    bold.bold = true;
    bold.fontSize = 11;
    bold.hAlign = HAlignType.left;
    // bold.backColor = '#EDE7FE';
    // topStyle.fontColor = '#FFFFFF';
    // bold.borders.all.lineStyle = LineStyle.none;
    // bold.borders.top.lineStyle = LineStyle.thin;


    //
    sheet.getRangeByIndex(2, 1, stages.length+1, 2).cellStyle = table;
    sheet.getRangeByIndex(2, 1, stages.length+1, 2).numberFormat = '#,##0.00₽';
    sheet.getRangeByIndex(1, 1, 1, 2).cellStyle = topStyle;
    sheet.getRangeByIndex(stages.length + 2, 1, stages.length + 2, 1).cellStyle = bottomStyleLeft;
    sheet.getRangeByIndex(stages.length + 2, 2, stages.length + 2, 2).cellStyle = bottomStyleRight;
    sheet.getRangeByIndex(stages.length + 2, 2, stages.length + 2, 2).numberFormat = '#,##0.00₽';
    sheet.getRangeByIndex(stages.length + 5, 1, stages.length + 6, 1).cellStyle = bold;
    //
    // Style tableStyle = workbook.styles.add('style2');
    // // tableStyle.fontSize = 18;
    // tableStyle.hAlign = HAlignType.left;
    // tableStyle.vAlign = VAlignType.top;
    //
    // Style datesStyle = workbook.styles.add('style3');
    // // datesStyle.fontSize = 18;
    //
    // sheet.getRangeByIndex(2, 1, 2 + stages.length, 1).cellStyle =
    //     tableStyle;
    // sheet.getRangeByIndex(2, 4, 2 + stages.length, 5).cellStyle =
    //     tableStyle;

    // sheet.getRangeByIndex(2, 2, 2+eventsSorted.length, 3).cellStyle = datesStyle;

    sheet.autoFitColumn(1);
    sheet.autoFitColumn(2);

    return workbook.saveAsStream();
  }
}

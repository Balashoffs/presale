import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_xlsio/xlsio.dart';
import 'package:open_file/open_file.dart' as open_file;

import 'package:presale/src/data/core/db_client.dart';
import 'package:presale/src/data/data_sources/v3/input_result_design_source.dart';
import 'package:presale/src/domain/models/v3/design/commercial_offer/commercial_offer.dart';
import 'package:presale/src/domain/models/v3/design/extension.dart';
import 'package:presale/src/domain/models/v4/design/design_presale_pojo.dart';
import 'package:presale/src/domain/models/v5/common/offer_template_builder.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/design_offer_result_viewmodel.dart';

import 'package:presale/src/data/xlsx_helper/save_file_mobile.dart'
    if (dart.library.html) 'package:presale/src/data/xlsx_helper/save_file_web.dart';

import 'design_offer_result_controller.dart';

part 'design_offer_state.dart';

part 'design_offer_cubit.freezed.dart';

class DesignOfferCubit extends Cubit<DesignOfferState> {
  final DesignOfferResultController _designOfferController;
  final DesignPresaleDataSourceLocal _dataSourceLocal;

  DesignOfferCubit({
    required DesignOfferResultController controller,
    required DBClient dbClient,
  }) : _designOfferController = controller,
       _dataSourceLocal = DesignPresaleDataSourceLocal(dbClient),
       super(const DesignOfferState.initial());

  void init() async {
    DesignPresalePojo designPresalePojo = await _dataSourceLocal
        .getDesignPresale(DesignPresaleDataSourceLocal.key);
    await _designOfferController.fillSign();
    bool isBuild = _designOfferController.buildModel(designPresalePojo);
    if (isBuild) {
      emit(
        DesignOfferState.showPage(_designOfferController.designOfferResultVM!),
      );
    }
  }

  void saveToFile() async {
    DesignPresalePojo designPresalePojo = await _dataSourceLocal
        .getDesignPresale(DesignPresaleDataSourceLocal.key);
    CommercialOfferResult? commercialOfferResult = _designOfferController
        .designOfferResultVM
        ?.toPojo(designPresalePojo.inputDataDesign);
    if (commercialOfferResult != null) {
      int total = designPresalePojo.divisions?.rows.length ?? 0;
      if (total != 0) {
        final Workbook workbook = Workbook(total);
        final Worksheet sheet = workbook.worksheets[0];
        DesignOfferTemplateBuilder builder = DesignOfferTemplateBuilder(
          offerResult: commercialOfferResult,
          worksheet: sheet,
        );
        await builder.fillRows();
        List<int> fileBytes = builder.saveToBytes();
        DateTime dateTime = designPresalePojo.inputDataDesign.created!;
        String offerId =
            'исх. №${dateTime.day}${dateTime.month}${dateTime.year}';
        saveAndLaunchFile(fileBytes, '$offerId.xlsx');
      }
    }
  }

  Future<void> _saveFile(List<int> fileBytes) async {
    String? pickedSaveFilePath;

    try {
      Directory w = await getApplicationDocumentsDirectory();
      pickedSaveFilePath = await FilePicker.platform.saveFile(
        allowedExtensions: ['.xlsx'],
        type: FileType.custom,
        dialogTitle: 'Сохранить КП в xlsx',
        fileName: 'КП.xlsx',
        initialDirectory: w.path,
        lockParentWindow: true,
        bytes: Uint8List.fromList(fileBytes),
      );

      if (Platform.isAndroid || Platform.isIOS) {
        //Launch the file (used open_file package)
        await open_file.OpenFile.open('$pickedSaveFilePath');
      } else if (Platform.isWindows) {
        await Process.run('start', <String>[
          '$pickedSaveFilePath',
        ], runInShell: true);
      } else if (Platform.isMacOS) {
        await Process.run('open', <String>[
          '$pickedSaveFilePath',
        ], runInShell: true);
      } else if (Platform.isLinux) {
        await Process.run('xdg-open', <String>[
          '$pickedSaveFilePath',
        ], runInShell: true);
      }
    } on PlatformException catch (e) {
      print(e.message);
    } catch (e) {
      print(e.toString());
    }
  }

  void toMainPage() async {}
}

// import 'dart:io';
//
//
// Map<String, List<String>> foundSectionFolder(
//     List<Hierarchy> hierarchies, List<FileSystemEntity> subSection) {
//   Map<String, List<String>> foundFiles = {};
//   for (var value in subSection) {
//     if (value.path.contains('.DS')) continue;
//     String folderName = value.path.split('/').last;
//     ;
//
//     Hierarchy? hr = hierarchies.firstWhere((element) {
//       ;
//       return element.section == folderName;
//     });
//     Directory dir = Directory(value.path);
//     if (dir.existsSync()) {
//       List<String> files = dir
//           .listSync()
//           .map((e) => e.path)
//           .where(
//             (element) => !element.contains('.DS'),
//           )
//           .toList();
//       foundFiles.putIfAbsent(
//         hr.section,
//         () => files,
//       );
//     }
//   }
//
//   return foundFiles;
// }

import 'package:flutter/services.dart';

class InputFileProcessor {
  final InputFileReader inputFileReader;
  final InputFileFinder inputFileFinder;
  Map<String, MetaData> metaDatas = {};

  InputFileProcessor(String startPath)
      : inputFileFinder = InputFileFinder(path: startPath),
        inputFileReader = InputFileReader();

  Future<void> startFind() async{
    final assetManifest = await AssetManifest.loadFromAssetBundle(rootBundle);
   List<String> files =  assetManifest.listAssets();

  }
}

class InputFileFinder {
  final String path;

  const InputFileFinder({
    required this.path,
  });
}

class InputFileReader {}

 class MetaData{
  final String parentId;
  final String pathToFile;

  const MetaData({
    required this.parentId,
    required this.pathToFile,
  });
}


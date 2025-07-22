import 'package:presale/src/domain/models/v2/constructing/model/input/factors/complexity/complexity_factor_builder.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/factors/estate_by_type/estate_by_type_factor_builder.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/factors/estate_square/estate_square_factor_builder.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/factors/heightness/heightness_factor_builder.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/factors/region/region_factor_builder.dart';
import 'package:presale/src/domain/models/v2/constructing/utils/files_utils/assets_files_utils.dart';

abstract class BaseFactorBuilder<T> {
  final String path;
  String? _type;

  String get type => _type ?? '';

  Future<List<List<dynamic>>> readFrom(String path) async {
    String csv = await readCsv(path);
    return readCSVFromString(csv);
  }

  T buildFromRow(List<dynamic> row);

  Future<List<T>> buildFromPath(String path) async{
    List<List<dynamic>> rows =await readFrom(path);
    _type = rows[0][0];
    rows = rows.sublist(1);
    return rows.map((row) => buildFromRow(row)).toList();
  }

  BaseFactorBuilder({
    required this.path,
  });

  double getFactor(dynamic rawFactor) {
    double factor = 0.0;
    if (rawFactor is String) {
      String factorAsString = rawFactor.split('-').first;
      factor = double.parse(factorAsString);
    } else {
      factor = rawFactor as double;
    }
    return factor;
  }
}

class UndefFactorBuilder extends BaseFactorBuilder<dynamic>{
  UndefFactorBuilder({required super.path});

  @override
  void buildFromRow(List<dynamic> row) {
    // TODO: implement buildFromRow
  }

}

BaseFactorBuilder createFactorBuilder(String path) {
  String name = path.split('/').last;
  switch (name) {
    case 'square_factors.csv':
      return EstateSquareFactorBuilder(path: path);
    case 'location_factors.csv':
      return RegionFactorBuilder(path: path);
    case 'high_factors.csv':
      return HeightnessFactorBuilder(path: path);
    case 'hard_factors.csv':
      return ComplexityFactorBuilder(path: path);
    case 'object_factors.csv':
      return EstateByTypeFactorBuilder(path: path);
    default:
      return UndefFactorBuilder(path: '');

  }
}

import 'cost_struct.dart';

CostStruct _buildCostStructFromRow(List<String> chunks) {
  String jobName = chunks[0];
  double jobFactor = double.parse(chunks[1].replaceFirst('%', '')) / 100;
  return CostStruct(jobFactor: jobFactor, jobName: jobName);
}

List<CostStruct> buildCostStructsFromRows(String row) {
  List<String> chunks = row.split('; ');
  return chunks.map((e) => e.split(': ')).map(
    (e) {
      return _buildCostStructFromRow(e);
    },
  ).toList();
}

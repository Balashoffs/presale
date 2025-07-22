abstract class InputResultDataSource<T> {
  const InputResultDataSource();

  Future<T> getInputResult(String id);

  Future<bool> deleteInputResult(String id);

  Future<bool> addInputResult(T result);
  // Future<bool> loadFromExcel()
}



abstract class SelectStageDataSource<T> {
  const SelectStageDataSource();

  Future<T> read(String id);

  Future<bool> delete(String id);

  Future<bool> create(String id, T result);
  // Future<bool> loadFromExcel()
}

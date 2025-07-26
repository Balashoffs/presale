abstract class DesignPresaleDataSource<T> {
  const DesignPresaleDataSource();

  Future<T> getDesignPresale(String id);

  Future<bool> deleteDesignPresale(String id);

  Future<bool> addDesignPresale(T result);
  // Future<bool> loadFromExcel()
}



abstract class SelectStageDataSource<T> {
  const SelectStageDataSource();

  Future<T> read(String id);

  Future<bool> delete(String id);

  Future<bool> create(String id, T result);
  // Future<bool> loadFromExcel()
}

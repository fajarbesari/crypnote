abstract class DataSource {
  Future<Map<String, dynamic>> insert();
  Future<List<Map<String, dynamic>>> query();
  Future<Map<String, dynamic>> updateById(int id);
  Future<Map<String, dynamic>> deleteById(int id);
}

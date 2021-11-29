import 'package:flutter_boilerplate/data_source/database/contract/database_contract.dart';
import 'package:flutter_boilerplate/domain/model/meta/meta_model.dart';

abstract class BaseRepository<T> {
  Future<DatabaseDao<T>> getDao();

  Future save(T model) async {
    var dao = await getDao();
    return dao.save(model);
  }

  Future saveAll(List<T> modelList) async {
    var dao = await getDao();
    return dao.saveAll(modelList);
  }

  Future delete(T model) async {
    var dao = await getDao();
    return dao.delete(model);
  }

  MetaModel markMetaDeleted(MetaModel meta) {
    return meta.copyWith.call(
      deleted: true,
    );
  }

  Future clearAll() async {
    var dao = await getDao();
    return dao.clearAll();
  }

  Future<Stream<List<T>>> watchAll() async {
    var dao = await getDao();
    return dao.watchAll();
  }
}

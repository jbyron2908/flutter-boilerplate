import 'package:flutter_boilerplate/data_source/database/contract/database_contract.dart';
import 'package:flutter_boilerplate/domain/model/profile/profile_model.dart';
import 'package:flutter_boilerplate/domain/repository/base/base_repository.dart';

class ProfileRepository extends BaseRepository<ProfileModel> {
  ProfileRepository(DatabaseClient databaseClient) {
    _databaseClient = databaseClient;
  }

  late DatabaseClient _databaseClient;

  @override
  Future<DatabaseDao<ProfileModel>> getDao() => _databaseClient.profileDao();

  Future markDeleted(ProfileModel model) async {
    var modelDeleted = model.copyWith.meta.call(deleted: true);

    var dao = await getDao();
    return dao.save(modelDeleted);
  }
}

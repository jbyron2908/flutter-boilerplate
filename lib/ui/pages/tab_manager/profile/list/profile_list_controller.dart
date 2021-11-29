import 'package:flutter_boilerplate/domain/model/profile/profile_model.dart';
import 'package:flutter_boilerplate/domain/repository/profile/profile_repository.dart';

class ProfileListController {
  ProfileListController(this.profileRepository);

  final ProfileRepository profileRepository;

  Future deleteProfile(ProfileModel profile) {
    return profileRepository.delete(profile);
  }
}

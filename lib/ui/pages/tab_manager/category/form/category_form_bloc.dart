import 'package:flutter_boilerplate/domain/model/category/category_model.dart';
import 'package:flutter_boilerplate/domain/model/icon/icon_model.dart';
import 'package:flutter_boilerplate/domain/repository/category/category_repository.dart';

class CategoryFormBloc {
  CategoryFormBloc(this.categoryRepository);

  final CategoryRepository categoryRepository;

  String name = '';
  IconModel icon = IconModel.iconDefault;
  CategoryModel? parent;

  Future<bool> save() async {
    var model = CategoryModel(
      name: name,
      parent: parent,
      icon: icon,
    );
    await categoryRepository.save(model);
    return true;
  }
}

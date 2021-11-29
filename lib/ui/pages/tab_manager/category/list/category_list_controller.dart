import 'package:flutter_boilerplate/domain/model/category/category_model.dart';
import 'package:flutter_boilerplate/domain/repository/category/category_repository.dart';

class CategoryListController {
  CategoryListController(this.categoryRepository);

  final CategoryRepository categoryRepository;

  Future deleteCategory(CategoryModel category) {
    return categoryRepository.delete(category);
  }
}

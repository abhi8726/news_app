import 'package:news_app/model/category_model.dart';

List<CategoryModel>
getCategories(){
  // ignore: deprecated_member_use
  List<CategoryModel> category=new List<CategoryModel>();
  CategoryModel categoryModel=new CategoryModel();

  //1
  categoryModel.categoryName="Business";
  categoryModel.imageUrl="https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8YnVzaW5lc3N8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60";
  category.add(categoryModel);
  categoryModel=new CategoryModel();

  categoryModel.categoryName="Entertainment";
  categoryModel.imageUrl="https://images.unsplash.com/photo-1514525253161-7a46d19cd819?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80";
  category.add(categoryModel);
  categoryModel=new CategoryModel();

  categoryModel.categoryName="General";
  categoryModel.imageUrl="https://images.unsplash.com/photo-1432821596592-e2c18b78144f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80";
  category.add(categoryModel);
  categoryModel=new CategoryModel();

  categoryModel.categoryName="Health";
  categoryModel.imageUrl="https://images.unsplash.com/photo-1587502537745-84b86da1204f?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80";
  category.add(categoryModel);
  categoryModel=new CategoryModel();

  categoryModel.categoryName="Science";
  categoryModel.imageUrl="https://images.unsplash.com/photo-1526666923127-b2970f64b422?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=752&q=80";
  category.add(categoryModel);
  categoryModel=new CategoryModel();

  categoryModel.categoryName="Sports";
  categoryModel.imageUrl="https://images.unsplash.com/photo-1596372176907-7b7cca63ef18?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=692&q=80";
  category.add(categoryModel);
  categoryModel=new CategoryModel();

  categoryModel.categoryName="Technology";
  categoryModel.imageUrl="https://images.unsplash.com/photo-1496065187959-7f07b8353c55?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80";
  category.add(categoryModel);

  return category;

}
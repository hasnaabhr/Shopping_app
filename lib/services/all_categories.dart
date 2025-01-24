import 'package:shoppingapp/helper/api.dart';

class AllCategoriesServices {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/categories', token: '');

    return data;
  }
}

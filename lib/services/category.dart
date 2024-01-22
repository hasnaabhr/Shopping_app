import 'dart:convert';

import 'package:shoppingapp/helper/api.dart';
import 'package:shoppingapp/models/product_model.dart';

class CategoriesServices {
  Future<List<ProductModel>> getCategoriesProduct(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');

    List<ProductModel> productslist = [];
    for (int i = 0; i < data.length; i++) {
      productslist.add(ProductModel.fromJson(data[i]));
    }
    return productslist;
  }
}

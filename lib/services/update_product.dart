import 'package:shoppingapp/helper/api.dart';
import 'package:shoppingapp/models/product_model.dart';

class UpdateProduct {
  Future<ProductModel> updateProduct({
    required String title,
    required String price,
    required String desc,
    required String image,
    required int id,
    required String category,
  }) async {
    print('Updating product with ID: $id');
    try {
      Map<String, dynamic> data = await Api().put(
        url: 'https://fakestoreapi.com/products/$id',
        body: {
          'title': title,
          'price': price,
          'description': desc,
          'image': image,
          'category': category
        },
        token: '',
      );
      print('Product updated successfully: $data');
      return ProductModel.fromJson(data);
    } catch (e) {
      print('Error updating product: $e');
      rethrow;
    }
  }
}

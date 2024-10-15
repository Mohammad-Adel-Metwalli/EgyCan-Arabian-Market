import 'package:egycan_app/Feature/Data/Repositories/Models/product_model.dart';

class CartModel
{
  ProductModel productModel;
  double total;
  int quantity;

  CartModel({required this.productModel, required this.total, required this.quantity});
}
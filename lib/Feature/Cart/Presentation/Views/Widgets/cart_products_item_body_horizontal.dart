import 'package:egycan_app/Feature/Cart/Presentation/Views/Widgets/horizontal_cart_total_and_quantity.dart';
import 'package:egycan_app/Feature/Cart/Presentation/Views/Widgets/product_cart_image.dart';
import 'package:flutter/material.dart';
import '../../../Data/Repositories/Models/cart_model.dart';

class CartProductsItemBodyHorizontal extends StatelessWidget
{
  const CartProductsItemBodyHorizontal({super.key, required this.cartProducts, required this.index,});
  final List<CartModel> cartProducts;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        ProductCartImage(imageUrl: cartProducts[index].productModel.imagesUrls[0]),

        HorizontalCartTotalAndQuantity(cartProducts: cartProducts, index: index),
      ],
    );
  }
}
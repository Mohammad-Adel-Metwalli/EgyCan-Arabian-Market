import 'package:egycan_app/Feature/Cart/Presentation/Views/Widgets/horizontal_cart_total_and_quantity.dart';
import 'package:egycan_app/Feature/Cart/Presentation/Views/Widgets/product_cart_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        ProductCartImage(productModel: cartProducts[index].productModel),

        SizedBox(width: 50.w),

        HorizontalCartTotalAndQuantity(cartProducts: cartProducts, index: index),
      ],
    );
  }
}
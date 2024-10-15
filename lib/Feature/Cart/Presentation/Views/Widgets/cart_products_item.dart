import 'package:egycan_app/Feature/Cart/Presentation/Views/Widgets/cart_products_item_body_vertical.dart';
import 'package:flutter/material.dart';
import 'package:flutter_device_config/config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../Data/Repositories/Models/cart_model.dart';
import 'cart_products_item_body_horizontal.dart';

class CartProductsItem extends StatefulWidget
{
  const CartProductsItem({super.key, required this.cartProducts, required this.index,});
  final List<CartModel> cartProducts;
  final int index;

  @override
  State<CartProductsItem> createState() => _CartProductsItemState();
}

class _CartProductsItemState extends State<CartProductsItem>
{
  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: pyramidsColor, width: 3.5),
        ),

        child: context.deviceType.name == 'Mobile' ? CartProductsItemBodyVertical(cartProducts: widget.cartProducts, index: widget.index) : CartProductsItemBodyHorizontal(cartProducts: widget.cartProducts, index: widget.index),
      ),
    );
  }
}
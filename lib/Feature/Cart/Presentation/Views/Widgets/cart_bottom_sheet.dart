import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/styles.dart';
import '../../../Data/Repositories/Models/cart_model.dart';
import 'cart_bottom_sheet_body.dart';

class CartBottomSheet extends StatelessWidget
{
  const CartBottomSheet({super.key, required this.allCartProducts,});
  final List<CartModel> allCartProducts;

  @override
  Widget build(BuildContext context) => Container(
    height: 400.h,
    decoration: BoxDecoration(
      color: white,
      borderRadius: Styles.roundedCornersOfBottomSheet,
    ),

    child: CartBottomSheetBody(allCartProducts: allCartProducts),
  );
}
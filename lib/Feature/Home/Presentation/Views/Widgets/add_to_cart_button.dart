import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../Data/Repositories/Models/product_model.dart';
import 'add_to_cart_button_body.dart';

class AddToCartButton extends StatelessWidget
{
  const AddToCartButton({super.key, required this.productModel, this.onPressed,});
  final void Function()? onPressed;
  final ProductModel productModel;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: MaterialButton(
        height: 60.h,
        color: pyramidsColor,
        onPressed: onPressed,
        minWidth: double.infinity,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: const AddToCartButtonBody(),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class ShowProductsOfCategory extends StatelessWidget
{
  const ShowProductsOfCategory({super.key, this.onPressed,});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context)
  {
    return MaterialButton(
      color: blue,
      height: 50.h,
      minWidth: 50.w,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: Center(child: Icon(Icons.chevron_right_rounded, color: white, size: 30.h)),
    );
  }
}
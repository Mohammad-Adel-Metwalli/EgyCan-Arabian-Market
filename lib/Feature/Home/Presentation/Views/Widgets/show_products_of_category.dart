import 'package:egycan_app/Core/Utils/constant_colors.dart';
import 'package:egycan_app/Feature/Home/Presentation/Views/Widgets/show_products_of_category_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      minWidth: 150.w,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: const ShowProductsOfCategoryBody(),
    );
  }
}
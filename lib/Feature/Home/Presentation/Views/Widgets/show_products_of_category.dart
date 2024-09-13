import 'package:egycan_app/Core/Utils/constant_colors.dart';
import 'package:egycan_app/Feature/Home/Presentation/Views/Widgets/show_products_of_category_body.dart';
import 'package:flutter/material.dart';

class ShowProductsOfCategory extends StatelessWidget
{
  const ShowProductsOfCategory({super.key, this.onPressed,});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context)
  {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(overlayColor: WidgetStatePropertyAll<Color>(grey.withOpacity(0.25))),
      child: const ShowProductsOfCategoryBody(),
    );
  }
}
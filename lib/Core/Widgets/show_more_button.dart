import 'package:animate_do/animate_do.dart';
import 'package:egycan_app/Core/Widgets/show_more_button_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Feature/Data/Repositories/Models/product_model.dart';
import '../../Feature/Home/Presentation/Views/Widgets/show_product_dialog.dart';
import '../Utils/constant_colors.dart';

class ShowMoreButton extends StatelessWidget
{
  const ShowMoreButton({super.key, required this.index, required this.productModel, this.width, this.height = 50});
  final ProductModel productModel;
  final double? height, width;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return MaterialButton(
      color: blue,
      height: height?.h,
      minWidth: width?.w,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      onPressed: () => showDialog(
        context: context,
        builder: (context) => ZoomIn(child: ShowProductDialog(index: index, productModel: productModel)),
      ),

      child: const ShowMoreButtonBody(),
    );
  }
}
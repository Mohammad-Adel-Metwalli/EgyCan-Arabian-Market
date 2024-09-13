import 'package:egycan_app/Feature/Home/Presentation/Views/Widgets/show_product_dialog_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../Data/Repositories/Models/product_model.dart';

class ShowProductDialog extends StatelessWidget
{
  const ShowProductDialog({super.key, required this.index, required this.productModel,});
  final ProductModel productModel;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Dialog(
      backgroundColor: white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: SizedBox(
        height: 500.h,
        width: 800.w,
        child: ShowProductDialogBody(productModel: productModel, index: index),
      ),
    );
  }
}
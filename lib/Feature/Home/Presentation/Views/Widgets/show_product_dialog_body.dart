import 'package:egycan_app/Core/Widgets/custom_product_single_image.dart';
import 'package:egycan_app/Feature/Home/Presentation/Views/Widgets/product_image_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../Data/Repositories/Models/product_model.dart';

class ShowProductDialogBody extends StatelessWidget
{
  const ShowProductDialogBody({super.key, required this.index, required this.productModel,});
  final ProductModel productModel;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          productModel.imagesUrls.length == 1 ? Padding(
            padding: EdgeInsets.all(16.h),
            child: CustomProductSingleImage(productModel: productModel, height: 350),
          ) : ProductImageDialog(imagesUrls: productModel.imagesUrls),

          productModel.imagesUrls.length == 1 ? const SizedBox.shrink() : SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

          Text(productModel.productName, style: TextStyle(color: black, fontWeight: FontWeight.w600, fontSize: 18.sp), textAlign: TextAlign.center),

          Text('\$ ${productModel.productPrice}', style: TextStyle(color: green, fontWeight: FontWeight.w700, fontSize: 18.sp), textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
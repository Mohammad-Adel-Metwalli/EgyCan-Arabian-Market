import 'package:egycan_app/Feature/Home/Presentation/Views/Widgets/product_image_dialog_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductImageDialog extends StatelessWidget
{
  const ProductImageDialog({super.key, required this.imageUrl,});
  final String imageUrl;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: 350.h,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: ProductImageDialogItem(imageUrl: imageUrl),
      ),
    );
  }
}
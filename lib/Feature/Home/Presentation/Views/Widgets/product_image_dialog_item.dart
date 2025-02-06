import 'package:egycan_app/Core/Widgets/custom_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../../../../Core/Utils/constant_colors.dart';

class ProductImageDialogItem extends StatelessWidget
{
  const ProductImageDialogItem({super.key, required this.imageUrl,});
  final String imageUrl;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: imageUrl == '' || !(imageUrl.contains('iframe')) ? Icon(Icons.image_not_supported_outlined, color: red, size: 80.h) : HtmlWidget(
            imageUrl, 
            enableCaching: true,
            onLoadingBuilder: (context, _, __) => const CustomProgressIndicator(colorOfProgressIndicator: white),
          ),
        ),
      ),
    );
  }
}
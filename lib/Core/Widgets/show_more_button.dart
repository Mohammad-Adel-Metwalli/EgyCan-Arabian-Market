import 'package:egycan_app/Core/Utils/constants.dart';
import 'package:egycan_app/Core/Widgets/show_more_button_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../Feature/Data/Repositories/Models/product_model.dart';
import '../Utils/constant_colors.dart';

class ShowMoreButton extends StatefulWidget
{
  const ShowMoreButton({super.key, required this.index, required this.productModel, this.width, this.height = 50,});
  final ProductModel productModel;
  final double? height, width;
  final int index;

  @override
  State<ShowMoreButton> createState() => _ShowMoreButtonState();
}

class _ShowMoreButtonState extends State<ShowMoreButton>
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialButton(
      color: blue,
      height: widget.height?.h,
      minWidth: widget.width?.w,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      onPressed: () => GoRouter.of(context).push(viewProductViewPath, extra: widget.productModel),
      child: const ShowMoreButtonBody(),
    );
  }
}
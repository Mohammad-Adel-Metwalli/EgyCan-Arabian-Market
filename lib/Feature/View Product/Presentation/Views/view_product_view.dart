import 'package:egycan_app/Core/Utils/assets_data.dart';
import 'package:egycan_app/Core/Utils/constant_colors.dart';
import 'package:egycan_app/Feature/Data/Repositories/Models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'Widgets/view_product_view_body.dart';

class ViewProductView extends StatefulWidget
{
  const ViewProductView({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  State<ViewProductView> createState() => _ViewProductViewState();
}

class _ViewProductViewState extends State<ViewProductView>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        leading: IconButton(
          onPressed: ()
          {
            GoRouter.of(context).pop();
            setState(() => AssetsData.quantity = 0);
          },
          icon: Icon(Icons.chevron_left_rounded, color: blue, size: 30.h),
        ),
      ),
      body: ViewProductViewBody(productModel: widget.productModel),
    );
  }
}
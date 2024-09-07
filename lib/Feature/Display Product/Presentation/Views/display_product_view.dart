import 'package:egycan_app/Core/Utils/constant_colors.dart';
import 'package:egycan_app/Core/Utils/styles.dart';
import 'package:egycan_app/Feature/Home/Presentation/Manager/All%20Products%20Cubit/all_products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../Core/Utils/constants.dart';
import 'Widgets/display_product_view_body.dart';

class DisplayProductView extends StatefulWidget
{
  const DisplayProductView({super.key, required this.categoryTitleAndProducts});
  final Map<dynamic, dynamic> categoryTitleAndProducts;

  @override
  State<DisplayProductView> createState() => _DisplayProductViewState();
}

class _DisplayProductViewState extends State<DisplayProductView>
{
  @override
  void initState()
  {
    super.initState();
    BlocProvider.of<AllProductsCubit>(context).fetchAllProducts();
  }

  @override
  Widget build(BuildContext context)
  {
    return RefreshIndicator(
      color: pyramidsColor,
      backgroundColor: white,
      onRefresh: () async => await BlocProvider.of<AllProductsCubit>(context).fetchAllProducts(),
      child: Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: white,
          title: Text(widget.categoryTitleAndProducts['title'], style: Styles.styleOfTitleBlue),
          leading: IconButton(
            onPressed: () => GoRouter.of(context).replace(homeViewPath),
            icon: Icon(Icons.chevron_left_rounded, color: blue, size: 40.h),
          ),
        ),


        body: DisplayProductViewBody(categoryTitleAndProducts: widget.categoryTitleAndProducts),
      ),
    );
  }
}
import 'package:animate_do/animate_do.dart';
import 'package:egycan_app/Core/Utils/assets_data.dart';
import 'package:egycan_app/Core/Widgets/show_more_button_body.dart';
import 'package:egycan_app/Feature/Home/Presentation/Manager/FAB%20Cart%20Cubit/fab_cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Feature/Data/Repositories/Models/product_model.dart';
import '../../Feature/Home/Presentation/Views/Widgets/show_product_dialog.dart';
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
      onPressed: ()
      {
        var fabCartCubit = context.read<FabCartCubit>();

        showDialog(
          context: context,
          builder: (context) => BlocProvider.value(
            value: fabCartCubit,
            child: ZoomIn(child: ShowProductDialog(index: widget.index, productModel: widget.productModel)),
          ),
        ).then((_) => setState(() => AssetsData.quantity = 0));
      },

      child: const ShowMoreButtonBody(),
    );
  }
}
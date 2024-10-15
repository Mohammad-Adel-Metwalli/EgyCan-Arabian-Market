import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../Home/Presentation/Manager/FAB Cart Cubit/fab_cart_cubit.dart';
import 'delete_product_button_body.dart';

class DeleteProductButton extends StatelessWidget
{
  const DeleteProductButton({super.key, required this.index,});
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return MaterialButton(
      color: red,
      height: 60.h,
      minWidth: 200.w,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: const DeleteProductButtonBody(),
      onPressed: () => BlocProvider.of<FabCartCubit>(context).removeFromCart(index: index),
    );
  }
}
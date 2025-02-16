import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../Home/Presentation/Manager/FAB Cart Cubit/fab_cart_cubit.dart';

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
      minWidth: 60.w,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Icon(MingCute.delete_2_fill, color: white, size: 25.h),
      onPressed: () => BlocProvider.of<FabCartCubit>(context).removeFromCart(index: index),
    );
  }
}
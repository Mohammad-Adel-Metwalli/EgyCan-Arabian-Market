import 'package:animate_do/animate_do.dart';
import 'package:egycan_app/Feature/Home/Presentation/Manager/FAB%20Cart%20Cubit/fab_cart_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../Core/Utils/constant_colors.dart';

AppBar customCartViewAppBar(BuildContext context) => AppBar(
  centerTitle: true,
  backgroundColor: white,
  leading: FadeInDownBig(
    child: IconButton(
      onPressed: () => GoRouter.of(context).pop(),
      icon: Icon(Icons.chevron_left_rounded, color: blue, size: 40.h),
    ),
  ),
  title: FadeInDownBig(child: Text('My Cart', style: TextStyle(color: blue, fontWeight: FontWeight.w700, fontSize: 25.sp))),
  actions: [
    IconButton(
      onPressed: ()
      {
        BlocProvider.of<FabCartCubit>(context).clearAllCartProducts();
        Navigator.pop(context);
      },
      icon: Icon(CupertinoIcons.delete_simple, color: red, size: 30.h),
    ),
  ],
);
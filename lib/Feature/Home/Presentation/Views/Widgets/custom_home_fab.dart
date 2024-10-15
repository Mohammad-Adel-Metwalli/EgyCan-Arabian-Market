import 'package:animate_do/animate_do.dart';
import 'package:egycan_app/Core/Utils/constants.dart';
import 'package:egycan_app/Feature/Cart/Data/Repositories/Models/cart_model.dart';
import 'package:egycan_app/Feature/Home/Presentation/Manager/FAB%20Cart%20Cubit/fab_cart_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'cart_button.dart';

class CustomHomeFAB extends StatefulWidget
{
  const CustomHomeFAB({super.key,});

  @override
  State<CustomHomeFAB> createState() => _CustomHomeFABState();
}

class _CustomHomeFABState extends State<CustomHomeFAB>
{
  List<CartModel> myCart = [];

  @override
  Widget build(BuildContext context)
  {
    return BlocConsumer<FabCartCubit, FabCartState>(
      listener: (context, state)
      {
        if(state is FabCartSuccess)
        {
          myCart = state.allCartProducts;
        }
      },

      builder: (context, state)
      {
        return FadeInRightBig(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              FloatingActionButton(
                onPressed: () => GoRouter.of(context).push(cartViewPath),
                backgroundColor: pyramidsColor,
                child: const Icon(CupertinoIcons.bag_fill, color: white),
              ),

              Positioned(
                bottom: 35.h,
                right: 35.w,
                child: CartButton(cartProducts: myCart.length),
              ),
            ],
          ),
        );
      },
    );
  }
}
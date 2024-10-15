import 'package:animate_do/animate_do.dart';
import 'package:egycan_app/Core/Utils/constant_colors.dart';
import 'package:egycan_app/Feature/Home/Presentation/Manager/FAB%20Cart%20Cubit/fab_cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Widgets/cart_view_body.dart';
import 'Widgets/checkout_button.dart';
import 'Widgets/custom_cart_view_app_bar.dart';

class CartView extends StatefulWidget
{
  const CartView({super.key,});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: white,
      appBar: customCartViewAppBar(context),
      body: FadeInUpBig(child: const CartViewBody()),
      bottomNavigationBar: FadeInUpBig(child: CheckoutButton(allCartProducts: BlocProvider.of<FabCartCubit>(context).allCartProducts)),
    );
  }
}
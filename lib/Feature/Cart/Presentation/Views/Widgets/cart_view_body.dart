import 'package:egycan_app/Feature/Home/Presentation/Manager/FAB%20Cart%20Cubit/fab_cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Data/Repositories/Models/cart_model.dart';
import 'cart_products_item.dart';

class CartViewBody extends StatefulWidget
{
  const CartViewBody({super.key,});

  @override
  State<CartViewBody> createState() => _CartViewBodyState();
}

class _CartViewBodyState extends State<CartViewBody>
{

  @override
  Widget build(BuildContext context)
  {
    return BlocBuilder<FabCartCubit, FabCartState>(
      builder: (context, state)
      {
        List<CartModel> allCartProducts = BlocProvider.of<FabCartCubit>(context).allCartProducts;

        return Center(
          child: ListView.builder(
            itemCount: allCartProducts.length,
            itemBuilder: (context, index) => CartProductsItem(cartProducts: allCartProducts, index: index),
          ),
        );
      },
    );
  }
}
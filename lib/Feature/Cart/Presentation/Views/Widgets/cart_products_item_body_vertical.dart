import 'package:egycan_app/Feature/Cart/Presentation/Views/Widgets/product_cart_image.dart';
import 'package:egycan_app/Feature/Cart/Presentation/Views/Widgets/vertical_cart_total_and_quantity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Home/Presentation/Manager/FAB Cart Cubit/fab_cart_cubit.dart';
import '../../../Data/Repositories/Models/cart_model.dart';
import 'delete_product_button.dart';

class CartProductsItemBodyVertical extends StatefulWidget
{
  const CartProductsItemBodyVertical({super.key, required this.cartProducts, required this.index});
  final List<CartModel> cartProducts;
  final int index;

  @override
  State<CartProductsItemBodyVertical> createState() => _CartProductsItemBodyVerticalState();
}

class _CartProductsItemBodyVerticalState extends State<CartProductsItemBodyVertical>
{
  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        ProductCartImage(productModel: widget.cartProducts[widget.index].productModel),

        SizedBox(
          width: double.infinity,
          child: Text(widget.cartProducts[widget.index].productModel.productName, style: TextStyle(fontSize: 15.sp, overflow: TextOverflow.ellipsis), maxLines: 1, textAlign: TextAlign.center),
        ),

        VerticalCartTotalAndQuantity(cartProducts: widget.cartProducts, index: widget.index),

        BlocBuilder<FabCartCubit, FabCartState>(
          builder: (context, state) => DeleteProductButton(index: widget.index),
        ),
      ],
    );
  }
}

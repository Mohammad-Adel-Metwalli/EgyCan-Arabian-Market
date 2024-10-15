import 'package:egycan_app/Feature/Cart/Presentation/Views/Widgets/delete_product_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../Home/Presentation/Manager/FAB Cart Cubit/fab_cart_cubit.dart';
import '../../../Data/Repositories/Models/cart_model.dart';

class HorizontalCartTotalAndQuantity extends StatefulWidget
{
  const HorizontalCartTotalAndQuantity({super.key, required this.cartProducts, required this.index});
  final List<CartModel> cartProducts;
  final int index;

  @override
  State<HorizontalCartTotalAndQuantity> createState() => _HorizontalCartTotalAndQuantityState();
}

class _HorizontalCartTotalAndQuantityState extends State<HorizontalCartTotalAndQuantity>
{
  @override
  Widget build(BuildContext context)
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget.cartProducts[widget.index].productModel.productName, style: TextStyle(fontSize: 15.sp, overflow: TextOverflow.ellipsis), maxLines: 1, textAlign: TextAlign.center),

        Text('Total = ${(widget.cartProducts[widget.index].productModel.productPrice * widget.cartProducts[widget.index].quantity).toStringAsFixed(2)} \$', style: TextStyle(color: green, fontWeight: FontWeight.w700, fontSize: 20.sp)),

        Row(
          children: [
            IconButton(
              onPressed: () => setState(()
              {
                if(widget.cartProducts[widget.index].quantity > 0)
                {
                  widget.cartProducts[widget.index].quantity--;
                }
              }),
              icon: const Icon(Icons.remove_circle_rounded, color: red),
            ),

            Text('${widget.cartProducts[widget.index].quantity} X', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 15.sp)),

            IconButton(
              onPressed: () => setState(() => widget.cartProducts[widget.index].quantity++),
              icon: const Icon(Icons.add_circle_rounded, color: green),
            ),
          ],
        ),

        BlocBuilder<FabCartCubit, FabCartState>(
          builder: (context, state) => DeleteProductButton(index: widget.index),
        ),
      ],
    );
  }
}

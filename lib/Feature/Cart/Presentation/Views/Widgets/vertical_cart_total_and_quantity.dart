import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../Data/Repositories/Models/cart_model.dart';

class VerticalCartTotalAndQuantity extends StatefulWidget
{
  const VerticalCartTotalAndQuantity({super.key, required this.cartProducts, required this.index});
  final List<CartModel> cartProducts;
  final int index;

  @override
  State<VerticalCartTotalAndQuantity> createState() => _VerticalCartTotalAndQuantityState();
}

class _VerticalCartTotalAndQuantityState extends State<VerticalCartTotalAndQuantity>
{
  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Total = ${(widget.cartProducts[widget.index].productModel.productPrice * widget.cartProducts[widget.index].quantity).toStringAsFixed(2)} \$', style: TextStyle(color: green, fontWeight: FontWeight.w700, fontSize: 20.sp)),

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
    );
  }
}
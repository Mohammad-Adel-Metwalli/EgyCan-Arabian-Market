import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class CartButton extends StatefulWidget
{
  const CartButton({super.key, required this.cartProducts,});
  final int cartProducts;

  @override
  State<CartButton> createState() => _CartButtonState();
}

class _CartButtonState extends State<CartButton>
{
  @override
  Widget build(BuildContext context)
  {
    return ZoomIn(
      child: CircleAvatar(
        radius: 15.h,
        backgroundColor: red,
        child: Center(child: Text(widget.cartProducts >= 99 ? '${widget.cartProducts}+' : '${widget.cartProducts}', style: TextStyle(color: white, fontSize: 11.sp, fontWeight: FontWeight.bold))),
      ),
    );
  }
}
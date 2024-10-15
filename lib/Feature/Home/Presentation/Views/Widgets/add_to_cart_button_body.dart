import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class AddToCartButtonBody extends StatelessWidget
{
  const AddToCartButtonBody({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Add to cart', style: TextStyle(color: white, fontWeight: FontWeight.bold, fontSize: 20.sp)),

          SizedBox(width: MediaQuery.sizeOf(context).width * 0.002),

          Icon(CupertinoIcons.cart, color: white, size: 25.h),
        ],
      ),
    );
  }
}
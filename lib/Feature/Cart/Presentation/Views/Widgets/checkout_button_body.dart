import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class CheckoutButtonBody extends StatelessWidget
{
  const CheckoutButtonBody({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Checkout', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.sp, color: white)),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),

        Icon(CupertinoIcons.share_up, color: white, size: 22.h)
      ],
    );
  }
}
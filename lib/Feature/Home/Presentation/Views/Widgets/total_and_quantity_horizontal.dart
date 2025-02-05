import 'package:egycan_app/Core/Utils/assets_data.dart';
import 'package:egycan_app/Feature/Data/Repositories/Models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class TotalAndQuantityHorizontal extends StatefulWidget
{
  const TotalAndQuantityHorizontal({super.key, required this.productModel,});
  final ProductModel productModel;

  @override
  State<TotalAndQuantityHorizontal> createState() => _TotalAndQuantityHorizontalState();
}

class _TotalAndQuantityHorizontalState extends State<TotalAndQuantityHorizontal>
{
  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Total = ${(double.parse(widget.productModel.productPrice) * AssetsData.quantity).toStringAsFixed(2)} \$', style: TextStyle(color: green, fontWeight: FontWeight.w700, fontSize: 20.sp)),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.2),

        IconButton(
          onPressed: () => setState(()
          {
            if(AssetsData.quantity > 0)
            {
              AssetsData.quantity--;
            }
          }),
          icon: const Icon(Icons.remove_circle_rounded, color: red),
        ),

        Text('${AssetsData.quantity} X', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 15.sp)),

        IconButton(
          onPressed: () => setState(() => AssetsData.quantity++),
          icon: const Icon(Icons.add_circle_rounded, color: green),
        ),
      ],
    );
  }
}

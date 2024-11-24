import 'package:egycan_app/Core/Widgets/custom_product_single_image.dart';
import 'package:egycan_app/Feature/Cart/Data/Repositories/Models/cart_model.dart';
import 'package:egycan_app/Feature/Home/Presentation/Manager/FAB%20Cart%20Cubit/fab_cart_cubit.dart';
import 'package:egycan_app/Feature/Home/Presentation/Views/Widgets/product_image_dialog.dart';
import 'package:egycan_app/Feature/Home/Presentation/Views/Widgets/total_and_quantity_horizontal.dart';
import 'package:egycan_app/Feature/Home/Presentation/Views/Widgets/total_and_quantity_vertical.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_device_config/config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/assets_data.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../Data/Repositories/Models/product_model.dart';
import 'add_to_cart_button.dart';

class ShowProductDialogBody extends StatefulWidget
{
  const ShowProductDialogBody({super.key, required this.index, required this.productModel,});
  final ProductModel productModel;
  final int index;

  @override
  State<ShowProductDialogBody> createState() => _ShowProductDialogBodyState();
}

class _ShowProductDialogBodyState extends State<ShowProductDialogBody>
{
  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20.h),

            widget.productModel.imagesUrls.length == 1 ? Padding(
              padding: EdgeInsets.all(16.h),
              child: CustomProductSingleImage(productModel: widget.productModel, height: 350, width: double.infinity),
            ) : ProductImageDialog(imagesUrls: widget.productModel.imagesUrls),

            widget.productModel.imagesUrls.length == 1 ? const SizedBox.shrink() : SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

            Text(widget.productModel.productName, style: TextStyle(color: black, fontWeight: FontWeight.w600, fontSize: 16.sp), textAlign: TextAlign.center),

            Text('\$ ${widget.productModel.productPrice}', style: TextStyle(color: green, fontWeight: FontWeight.w700, fontSize: 18.sp), textAlign: TextAlign.center),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

            context.deviceType.name == 'Mobile' ? TotalAndQuantityVertical(productModel: widget.productModel) : TotalAndQuantityHorizontal(productModel: widget.productModel),

            BlocConsumer<FabCartCubit, FabCartState>(
              listener: (context, state)
              {
                if(state is FabCartSuccess)
                {
                  Navigator.pop(context);
                }
              },

              builder: (context, state)
              {
                return AddToCartButton(
                  productModel: widget.productModel,
                  onPressed: ()
                  {
                    CartModel cartModel = CartModel(productModel: widget.productModel, total: widget.productModel.productPrice * AssetsData.quantity, quantity: AssetsData.quantity);
                    BlocProvider.of<FabCartCubit>(context).addToCart(cartModel: cartModel);
                  },
                );
              },
            ),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          ],
        ),
      ),
    );
  }
}
import 'package:egycan_app/Core/Utils/constants.dart';
import 'package:egycan_app/Feature/Cart/Presentation/Views/cart_view.dart';
import 'package:egycan_app/Feature/Data/Repositories/Models/product_model.dart';
import 'package:egycan_app/Feature/Home/Presentation/Views/home_view.dart';
import 'package:egycan_app/Feature/View%20Product/Presentation/Views/view_product_view.dart';
import 'package:go_router/go_router.dart';
import '../../Feature/Display Products/Presentation/Views/display_product_view.dart';

abstract class AppRouter
{
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: homeViewPath,
        builder: (context, state) => const HomeView(),
      ),

      GoRoute(
        path: displayProductsViewPath,
        builder: (context, state) =>
            DisplayProductView(
                categoryTitleAndProducts: state.extra as Map<dynamic, dynamic>),
      ),

      GoRoute(
        path: cartViewPath,
        builder: (context, state) => const CartView(),
      ),

      GoRoute(
        path: viewProductViewPath,
        builder: (context, state) => ViewProductView(productModel: state.extra as ProductModel),
      ),
    ],
  );
}
import 'package:egycan_app/Core/Utils/constants.dart';
import 'package:egycan_app/Feature/Cart/Presentation/Views/cart_view.dart';
import 'package:egycan_app/Feature/Display%20Product/Presentation/Views/display_product_view.dart';
import 'package:egycan_app/Feature/Home/Presentation/Views/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter
{
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: homeViewPath,
        builder: (context, state) => const HomeView(),
      ),

      GoRoute(
        path: displayProductViewPath,
        builder: (context, state) => DisplayProductView(categoryTitleAndProducts: state.extra as Map<dynamic, dynamic>),
      ),

      GoRoute(
        path: cartViewPath,
        builder: (context, state) => const CartView(),
      ),
    ],
  );
}
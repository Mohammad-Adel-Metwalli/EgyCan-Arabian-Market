import 'package:egycan_app/Core/Utils/constants.dart';
import 'package:egycan_app/Feature/Display%20Product/Presentation/Views/display_product_view.dart';
import 'package:egycan_app/Feature/Home/Presentation/Manager/All%20Categories%20Cubit/all_categories_cubit.dart';
import 'package:egycan_app/Feature/Home/Presentation/Manager/All%20Products%20Cubit/all_products_cubit.dart';
import 'package:egycan_app/Feature/Home/Presentation/Views/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter
{
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: homeViewPath,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => AllProductsCubit()),
            BlocProvider(create: (context) => AllCategoriesCubit()),
          ],

          child: const HomeView(),
        ),
      ),

      GoRoute(
        path: displayProductViewPath,
        builder: (context, state) => BlocProvider(
          create: (context) => AllProductsCubit(),
          child: DisplayProductView(categoryTitleAndProducts: state.extra as Map<dynamic, dynamic>),
        ),
      ),
    ],
  );
}
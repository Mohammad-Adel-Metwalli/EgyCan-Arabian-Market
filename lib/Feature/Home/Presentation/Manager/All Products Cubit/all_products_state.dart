part of 'all_products_cubit.dart';

@immutable
sealed class AllProductsState {}

final class AllProductsInitial extends AllProductsState {}
final class AllProductsSuccess extends AllProductsState
{
  final List<ProductModel> allProducts;

  AllProductsSuccess({required this.allProducts});
}
part of 'fab_cart_cubit.dart';

@immutable
sealed class FabCartState {}

final class FabCartInitial extends FabCartState {}
final class FabCartSuccess extends FabCartState
{
  final List<CartModel> allCartProducts;

  FabCartSuccess({required this.allCartProducts});
}
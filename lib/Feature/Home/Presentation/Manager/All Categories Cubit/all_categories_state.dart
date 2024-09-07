part of 'all_categories_cubit.dart';

@immutable
sealed class AllCategoriesState {}

final class AllCategoriesInitial extends AllCategoriesState {}
final class AllCategoriesLoading extends AllCategoriesState {}
final class AllCategoriesSuccess extends AllCategoriesState
{
  final List<dynamic> categoryValues;
  final List<String> categoryKeys;

  AllCategoriesSuccess({required this.categoryValues, required this.categoryKeys});
}

final class AllCategoriesFailure extends AllCategoriesState
{
  final String errorMessage;

  AllCategoriesFailure({required this.errorMessage});
}
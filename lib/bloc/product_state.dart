// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'product_bloc.dart';


sealed class ProductState {}

final class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProducSuccess extends ProductState {
  final List<Product> product;

  ProducSuccess({
    required this.product,
  });
}

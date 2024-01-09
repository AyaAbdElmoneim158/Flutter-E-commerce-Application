import 'package:app/src/core/error/i_failures.dart';
import 'package:app/src/features/home/model/product_model.dart';
import 'package:dartz/dartz.dart';

mixin CheckoutServices{
  Future<Either<IFailure, bool>> applyPromoCode();
  Future<Either<IFailure, bool>> getTotalAmount();
}
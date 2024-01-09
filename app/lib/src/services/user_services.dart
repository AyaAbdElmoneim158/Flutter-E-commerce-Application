import 'package:app/src/core/error/i_failures.dart';
import 'package:app/src/features/profile/model/shipping_address_model.dart';
import 'package:app/src/features/profile/model/order_model.dart';
import 'package:dartz/dartz.dart';

mixin UserServices {
  Future<Either<IFailure, List<OrderModel>>> getUserOrders();
  Future<Either<IFailure, Unit>> getUserPaymentMethods();
  Future<Either<IFailure, bool>> addPaymentMethodToUser();

  Future<Either<IFailure, List<ShippingAddressModel>>> getUserShippingAddress();
  Future<Either<IFailure, List<ShippingAddressModel>>> getUserReviews();
  Future<Either<IFailure, bool>> addShippingAddressToUser();
}

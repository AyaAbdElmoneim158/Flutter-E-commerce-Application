import 'package:app/src/core/error/i_failures.dart';
import 'package:app/src/features/profile/model/shipping_address_model.dart';
import 'package:app/src/features/profile/model/order_model.dart';
import 'package:dartz/dartz.dart';

abstract class IProfileServices {
  // Future<Either<IFailure, List<OrderModel>>> getAllOrders();
  // Future<Either<IFailure, Unit>>getAllPaymentMethods(); //! Do PaymentMethod Model
  // Future<Either<IFailure, bool>> addPaymentMethod();

  // Future<Either<IFailure, List<ShippingAddressModel>>> getAllShippingAddress();
  // Future<Either<IFailure, bool>> addShippingAddress();
}

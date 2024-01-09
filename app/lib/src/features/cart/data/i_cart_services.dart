import 'package:app/src/core/error/i_failures.dart';
import 'package:app/src/features/home/model/product_model.dart';
import 'package:dartz/dartz.dart';

abstract class ICartServices{

  // Future<Either <IFailure, List<ProductModel>>> getAllCartsProducts();
  // Future<Either <IFailure, Unit>> addQuantityOfCartsProducts();
  // Future<Either <IFailure, Unit>> minceQuantityOfCartsProducts();

  // Future<Either<IFailure, bool>> addToFavorites();
  // Future<Either<IFailure, bool>> deleteFromCartsProducts();

  // Future<Either<IFailure, bool>> applyPromoCode();
  // Future<Either<IFailure, bool>> getTotalAmount();

  Future<Either<IFailure, bool>> choosePaymentMethod();
  Future<Either<IFailure, bool>> chooseShippingAddress();
  Future<Either<IFailure, bool>> chooseDeliveryMethod();


  Future<Either<IFailure, bool>> addToOrder();






}
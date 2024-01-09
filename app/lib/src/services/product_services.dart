import 'package:app/src/core/error/i_failures.dart';
import 'package:app/src/features/home/model/product_model.dart';
import 'package:app/src/features/home/model/review_model.dart';
import 'package:dartz/dartz.dart';

mixin ProductServices {
  Future<Either<IFailure, List<ProductModel>>> getSaleProducts();
  Future<Either<IFailure, List<ProductModel>>> getNewProducts();
  
  Future<Either<IFailure, List<ProductModel>>> getProduct();
  Future<Either<IFailure, List<ProductModel>>> getSearchedProducts();


  Future<Either<IFailure, List<ProductModel>>> getProductReviews();
  Future<Either<IFailure, List<ProductModel>>> addProductReview();

  Future<Either<IFailure, List<ProductModel>>> getFavoriteProducts();
  Future<Either<IFailure, bool>> addFavoriteProduct();
  Future<Either<IFailure, bool>> deleteFavoriteProduct();
  Future<Either<IFailure, bool>> isFavoriteProduct();

  Future<Either<IFailure, List<ProductModel>>> getCartProducts();
  Future<Either<IFailure, bool>> addCartProduct();
  Future<Either<IFailure, bool>> deleteCartProduct();
  Future<Either<IFailure, bool>> isCartProduct();
  Future<Either<IFailure, bool>> addProductQuantity();
  Future<Either<IFailure, bool>> minceProductQuantity();
  
}

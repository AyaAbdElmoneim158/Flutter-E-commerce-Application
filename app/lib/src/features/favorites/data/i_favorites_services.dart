import 'package:app/src/core/error/i_failures.dart';
import 'package:app/src/features/category/model/brand_model.dart';
import 'package:app/src/features/home/model/product_model.dart';
import 'package:dartz/dartz.dart';

abstract class IFavoritesServices {
  Future<Either<IFailure, List<ProductModel>>> getAllFavoritesProducts();
  Future<Either<IFailure, bool>> deleteFavoriteProduct();
  Future<Either<IFailure, bool>> searchAtFavoriteProduct();

  Future<Either<IFailure, bool>> addToCard();

  Future<Either<IFailure, bool>> getFavoritesProductsView();

  Future<Either<IFailure, List<ProductModel>>> sortFavoritesProductsByPopular();
  Future<Either<IFailure, List<ProductModel>>> sortFavoritesProductsByNewest();
  Future<Either<IFailure, List<ProductModel>>>
      sortFavoritesProductsByCustomReviews();
  Future<Either<IFailure, List<ProductModel>>>
      sortFavoritesProductsByLowestToHighPrice();
  Future<Either<IFailure, List<ProductModel>>>
      sortFavoritesProductsByHighToLowestPrice();

  Future<Either<IFailure, List<ProductModel>>> filterFavoritesProductsByPriceRange();
  Future<Either<IFailure, List<ProductModel>>> filterFavoritesProductsByColors();
  Future<Either<IFailure, List<ProductModel>>> filterFavoritesProductsBySizes();
  Future<Either<IFailure, List<ProductModel>>> filterFavoritesProductsByCategory();
  Future<Either<IFailure, List<ProductModel>>> filterFavoritesProductsByBrands();

  Future<Either<IFailure, List<Brand>>> getAllBrands();
  Future<Either<IFailure, List<Brand>>> searchBrand(String searchedBrand);
}

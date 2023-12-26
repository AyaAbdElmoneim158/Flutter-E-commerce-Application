/*
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:testapp/news_app_hadi/services/utils.dart';
import 'package:testapp/news_app_hadi/utils/vars.dart';
import 'package:testapp/news_app_hadi/views/widgets/build_pagination_button.dart';
import 'package:testapp/news_app_hadi/views/widgets/custom_drawer.dart';
import 'package:testapp/news_app_hadi/views/widgets/custom_tab.dart';
import 'package:testapp/news_app_hadi/views/widgets/home_app_bar.dart';
import 'package:testapp/news_app_hadi/views/widgets/news_card.dart';
import 'package:testapp/news_app_hadi/views/widgets/top_tending_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).getScreenSize;
    final Color color = Utils(context).getColor;
    // final newsProvider = Provider.of<NewsProvider>(context);
    var newsType = NewsType.allNews;
    var currentPaginationNumber = 0;
    var dropdownButtonValue = SortByEnum.popularity.name;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: buildAppBar(color, context),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Tabs ------------------------------------------------------------
            Row(
              children: [
                CustomTab(
                  textTab: NewsType.allNews.toString(),
                  onPressed: () {
                    if (newsType == NewsType.allNews) {
                      return;
                    }
                    newsType = NewsType.allNews;
                    setState(() {});
                  },
                  color: (newsType == NewsType.allNews)
                      ? Theme.of(context).cardColor
                      : Colors.transparent,
                  fontSize: (newsType == NewsType.allNews) ? 22 : 14,
                ),
                CustomTab(
                  textTab: NewsType.topTrending.toString(),
                  onPressed: () {
                    if (newsType == NewsType.topTrending) {
                      return;
                    }
                    newsType = NewsType.topTrending;
                    setState(() {});
                  },
                  color: (newsType == NewsType.topTrending)
                      ? Theme.of(context).cardColor
                      : Colors.transparent,
                  fontSize: (newsType == NewsType.topTrending) ? 22 : 14,
                ),
              ],
            ),
            const SizedBox(height: 8),
            //Pagination ------------------------------------------------------------
            Visibility(
              visible: (newsType == NewsType.allNews),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildPaginationButton(
                    onPressed: () {
                      if (currentPaginationNumber == 0) {
                        setState(() {
                          return;
                        });
                      } else {
                        setState(() {
                          currentPaginationNumber -= 1;
                        });
                      }
                    },
                    btnText: "Prev",
                    icon: Icons.arrow_back_ios,
                  ),
                  Expanded(
                    // Flexible
                    child: ListView.separated(
                      itemBuilder: (context, index) => buildPaginationNumber(
                        index,
                        () {
                          currentPaginationNumber = index;
                          setState(() {});
                        },
                        (currentPaginationNumber == index)
                            ? Colors.blue
                            : Colors.grey,
                      ),
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 4),
                      itemCount: 5,
                    ),
                  ),
                  buildPaginationButton(
                    onPressed: () {
                      if (currentPaginationNumber == 4) {
                        setState(() {
                          return;
                        });
                      } else {
                        setState(() {
                          currentPaginationNumber += 1;
                        });
                      }
                    },
                    btnText: "Next",
                    icon: Icons.arrow_forward_ios,
                  ),
                ],
              ),
            ),
            //dropdownList ------------------------------------------------------------
            Visibility(
              visible: (newsType == NewsType.allNews),
              child: Align(
                alignment: Alignment.centerLeft,
                child: DropdownButton(
                  value: dropdownButtonValue,
                  items: [
                    DropdownMenuItem(
                      value: SortByEnum.popularity.name,
                      child: Text(
                        SortByEnum.popularity.name,
                      ),
                    ),
                    DropdownMenuItem(
                      value: SortByEnum.publishedAt.name,
                      child: Text(
                        SortByEnum.publishedAt.name,
                      ),
                    ),
                    DropdownMenuItem(
                      value: SortByEnum.relevancy.name,
                      child: Text(
                        SortByEnum.relevancy.name,
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    dropdownButtonValue = value!;
                    setState(() {});
                  },
                ),
              ),
            ),
            //News ------------------------------------------------------------
            Visibility(
              visible: (newsType == NewsType.allNews),
              child: Expanded(
                  child: ListView.separated(
                itemBuilder: (context, index) => const NewsCard(),
                separatorBuilder: (context, index) => const SizedBox(height: 8),
                itemCount: 10,
              )),
            ),
            //Top Tranding ------------------------------------------------------------
            SizedBox(
              height: size.height * 0.6,
              child: Swiper(
                autoplayDelay: 8000,
                autoplay: true,
                itemWidth: size.width * 0.9,
                layout: SwiperLayout.STACK,
                viewportFraction: 0.9,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const TopTrendingWidget();
                  // return ChangeNotifierProvider.value(
                  //   value: snapshot.data![index],
                  //   child: const (
                  //       // url: snapshot.data![index].url,
                  //       ),
                  // );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  TextButton buildPaginationNumber(
    int index,
    void Function()? onPressed,
    Color? color,
  ) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          (index + 1).toString(),
        ),
      ),
    );
  }
}
*/
//? https://www.google.com/search?q=vintage-clothing-category.jpg&sca_esv=593738602&sxsrf=AM9HkKkpfJ9tQ6OsFB64Kpr7kgJb46KFOA%3A1703588410577&ei=OrKKZZXqIvu3i-gP8cKKqAM&ved=0ahUKEwiV77iw-ayDAxX72wIHHXGhAjUQ4dUDCBA&uact=5&oq=vintage-clothing-category.jpg&gs_lp=Egxnd3Mtd2l6LXNlcnAiHXZpbnRhZ2UtY2xvdGhpbmctY2F0ZWdvcnkuanBnSIQYUJgHWI0VcAJ4AJABBJgB2AGgAbUIqgEFMC41LjG4AQPIAQD4AQH4AQKoAhLCAgQQIxgnwgIHECMY6gIYJ8ICEBAAGAMYjwEY6gIYtALYAQHiAwQYASBBiAYBugYGCAEQARgK&sclient=gws-wiz-serp
// https://www.minimizemymess.com/blog/types-of-clothing#top
// https://www.google.com/search?q=clothing+category+type&oq=cloth+type+Category&gs_lcrp=EgZjaHJvbWUqCAgBEAAYFhgeMgYIABBFGDkyCAgBEAAYFhgeMg0IAhAAGIYDGIAEGIoFMg0IAxAAGIYDGIAEGIoFMg0IBBAAGIYDGIAEGIoFMg0IBRAAGIYDGIAEGIoFMg0IBhAAGIYDGIAEGIoF0gEIMjI5MWowajeoAgCwAgA&sourceid=chrome&ie=UTF-8
// https://eslforums.com/types-of-clothing/

/*
! Category-model --------------------------------------------------------------------------------------------
Sweater, Dress, Hoodies, T-shirt
Flip-flops,Shorts,Skirt,Jeans,Shoes,Coat,High heels
Suit, Cap,Socks
Shirt
Bra
Scarf
Swimsuit
Hat
Gloves
Jacket
Long coat
Boots
Sunglasses
Tie
Polo shirt
Leather jackets
import 'package:mongo_dart/mongo_dart.dart';

class Category {
  String name;
  String slug;
  String image;
  DateTime createdAt;
  DateTime updatedAt;

  Category({
    required this.name,
    required this.slug,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      name: json['name'],
      slug: json['slug'],
      image: json['image'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'slug': slug,
      'image': image,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
*->------------------------------------------------------------------------

void main() {
  List<Category> dummyCategories = [
    Category(
      name: 'T-Shirts',
      slug: 't-shirts',
      image: 't-shirts-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Jeans',
      slug: 'jeans',
      image: 'jeans-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Dresses',
      slug: 'dresses',
      image: 'dresses-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Sweaters',
      slug: 'sweaters',
      image: 'sweaters-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Jackets',
      slug: 'jackets',
      image: 'jackets-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Pants',
      slug: 'pants',
      image: 'pants-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Shoes',
      slug: 'shoes',
      image: 'shoes-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Accessories',
      slug: 'accessories',
      image: 'accessories-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Hats',
      slug: 'hats',
      image: 'hats-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Activewear',
      slug: 'activewear',
      image: 'activewear-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Formal Wear',
      slug: 'formal-wear',
      image: 'formal-wear-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Swimwear',
      slug: 'swimwear',
      image: 'swimwear-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Socks',
      slug: 'socks',
      image: 'socks-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Underwear',
      slug: 'underwear',
      image: 'underwear-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Outerwear',
      slug: 'outerwear',
      image: 'outerwear-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Sportswear',
      slug: 'sportswear',
      image: 'sportswear-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Ethnic Wear',
      slug: 'ethnic-wear',
      image: 'ethnic-wear-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Sleepwear',
      slug: 'sleepwear',
      image: 'sleepwear-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Maternity Wear',
      slug: 'maternity-wear',
      image: 'maternity-wear-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Vintage Clothing',
      slug: 'vintage-clothing',
      image: 'vintage-clothing-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Casual Shirts',
      slug: 'casual-shirts',
      image: 'casual-shirts-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Shorts',
      slug: 'shorts',
      image: 'shorts-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Winter Coats',
      slug: 'winter-coats',
      image: 'winter-coats-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Handbags',
      slug: 'handbags',
      image: 'handbags-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Scarves',
      slug: 'scarves',
      image: 'scarves-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Sunglasses',
      slug: 'sunglasses',
      image: 'sunglasses-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Watches',
      slug: 'watches',
      image: 'watches-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Casual Dresses',
      slug: 'casual-dresses',
      image: 'casual-dresses-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Blouses',
      slug: 'blouses',
      image: 'blouses-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Sweatshirts',
      slug: 'sweatshirts',
      image: 'sweatshirts-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Belts',
      slug: 'belts',
      image: 'belts-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Gloves',
      slug: 'gloves',
      image: 'gloves-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Ties',
      slug: 'ties',
      image: 'ties-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Wallets',
      slug: 'wallets',
      image: 'wallets-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Leggings',
      slug: 'leggings',
      image: 'leggings-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Suits',
      slug: 'suits',
      image: 'suits-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    // Add more categories with similar structure
    // ...
  ];

  // Convert categories to JSON
  List<Map<String, dynamic>> categoriesJson =
      dummyCategories.map((category) => category.toJson()).toList();
  print('Categories JSON: $categoriesJson');
}
!SubCategory-model --------------------------------------------------------------------------------------------
class SubCategory {
  String name;
  String slug;
  String category; // Assuming the category field stores the ID of the parent category
  DateTime createdAt;
  DateTime updatedAt;

  SubCategory({
    required this.name,
    required this.slug,
    required this.category,
    required this.createdAt,
    required this.updatedAt,
  });

  factory SubCategory.fromJson(Map<String, dynamic> json) {
    return SubCategory(
      name: json['name'],
      slug: json['slug'],
      category: json['category'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'slug': slug,
      'category': category,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}




!Product-model --------------------------------------------------------------------------------------------
import 'package:mongo_dart/mongo_dart.dart';

class Product {
  String title;
  String slug;
  String description;
  int quantity;
  int sold;
  double price;
  double priceAfterDiscount;
  List<String> colors;
  String imageCover;
  List<String> images;
  ObjectId category;
  List<ObjectId> subcategories;
  ObjectId brand;
  double ratingsAverage;
  int ratingsQuantity;
  DateTime createdAt;
  DateTime updatedAt;

  List<Review> reviews;

  Product(
      {required this.title,
      required this.slug,
      required this.description,
      required this.quantity,
      required this.sold,
      required this.price,
      this.priceAfterDiscount,
      required this.colors,
      required this.imageCover,
      required this.images,
      required this.category,
      required this.subcategories,
      required this.brand,
      required this.ratingsAverage,
      required this.ratingsQuantity,
      required this.createdAt,
      required this.updatedAt,
      required this.reviews});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      title: json['title'],
      slug: json['slug'],
      description: json['description'],
      quantity: json['quantity'],
      sold: json['sold'],
      price: json['price'],
      priceAfterDiscount: json['priceAfterDiscount'],
      colors: List<String>.from(json['colors']),
      imageCover: json['imageCover'],
      images: List<String>.from(json['images']),
      category: ObjectId.fromHexString(json['category']),
      subcategories: List<ObjectId>.from(
          json['subcategories'].map((id) => ObjectId.fromHexString(id))),
      brand: ObjectId.fromHexString(json['brand']),
      ratingsAverage: json['ratingsAverage'],
      ratingsQuantity: json['ratingsQuantity'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      reviews: List<Review>.from(
          json['reviews'].map((review) => Review.fromJson(review))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'slug': slug,
      'description': description,
      'quantity': quantity,
      'sold': sold,
      'price': price,
      'priceAfterDiscount': priceAfterDiscount,
      'colors': colors,
      'imageCover': imageCover,
      'images': images,
      'category': category.toHexString(),
      'subcategories':
          subcategories.map((subcategory) => subcategory.toHexString()).toList(),
      'brand': brand.toHexString(),
      'ratingsAverage': ratingsAverage,
      'ratingsQuantity': ratingsQuantity,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'reviews': reviews.map((review) => review.toJson()).toList(),
    };
  }
}

class Review {
  ObjectId user;
  String review;
  double rating;
  ObjectId product;
  DateTime createdAt;

  Review(
      {required this.user,
      required this.review,
      required this.rating,
      required this.product,
      required this.createdAt});

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      user: ObjectId.fromHexString(json['user']),
      review: json['review'],
      rating: json['rating'],
      product: ObjectId.fromHexString(json['product']),
      createdAt: DateTime.parse(json['createdAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user': user.toHexString(),
      'review': review,
      'rating': rating,
      'product': product.toHexString(),
      'createdAt': createdAt.toIso8601String(),
    };
  }
}

void main() {
  List<Product> dummyClothingProducts = [
    Product(
      title: 'Casual T-Shirt',
      slug: 'casual-t-shirt',
      description: 'Comfortable and stylish casual t-shirt for everyday wear.',
      quantity: 50,
      sold: 20,
      price: 19.99,
      priceAfterDiscount: 15.99,
      colors: ['Blue', 'White', 'Black'],
      imageCover: 'casual-t-shirt-cover.jpg',
      images: ['t-shirt-image1.jpg', 't-shirt-image2.jpg', 't-shirt-image3.jpg'],
      category: ObjectId(),
      subcategories: [ObjectId(), ObjectId()],
      brand: ObjectId(),
      ratingsAverage: 4.2,
      ratingsQuantity: 15,
      createdAt: DateTime.now().subtract(Duration(days: 30)),
      updatedAt: DateTime.now(),
      reviews: [
        Review(
          user: ObjectId(),
          review: 'Very comfortable and fits perfectly!',
          rating: 5.0,
          product: ObjectId(),
          createdAt: DateTime.now().subtract(Duration(days: 10)),
        ),
        Review(
          user: ObjectId(),
          review: 'Nice color options, good quality material.',
          rating: 4.0,
          product: ObjectId(),
          createdAt: DateTime.now().subtract(Duration(days: 15)),
        ),
      ],
    ),
    Product(
      title: 'Formal Shirt',
      slug: 'formal-shirt',
      description: 'Elegant formal shirt for business or special occasions.',
      quantity: 30,
      sold: 15,
      price: 39.99,
      priceAfterDiscount: 35.99,
      colors: ['White', 'Light Blue', 'Pink'],
      imageCover: 'formal-shirt-cover.jpg',
      images: ['formal-shirt-image1.jpg', 'formal-shirt-image2.jpg'],
      category: ObjectId(),
      subcategories: [ObjectId(), ObjectId()],
      brand: ObjectId(),
      ratingsAverage: 4.5,
      ratingsQuantity: 10,
      createdAt: DateTime.now().subtract(Duration(days: 25)),
      updatedAt: DateTime.now(),
      reviews: [
        Review(
          user: ObjectId(),
          review: 'Great fit and excellent quality!',
          rating: 5.0,
          product: ObjectId(),
          createdAt: DateTime.now().subtract(Duration(days: 8)),
        ),
        Review(
          user: ObjectId(),
          review: 'Perfect for formal occasions.',
          rating: 4.5,
          product: ObjectId(),
          createdAt: DateTime.now().subtract(Duration(days: 12)),
        ),
      ],
    ),
    // Add more clothing products with similar structure
    // ...
  ];

  // Convert clothing products to JSON
  List<Map<String, dynamic>> clothingProductsJson =
      dummyClothingProducts.map((product) => product.toJson()).toList();
  print('Clothing Products JSON: $clothingProductsJson');
}


 */
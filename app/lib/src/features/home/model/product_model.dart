//!-> Done *** *** *** *** *** *** *** *** *** *** *** ***
class ProductModel {
  ProductModel({
    required this.uid,
    required this.name,
    required this.description,
    required this.price,
    required this.images,
    required this.categories,
    required this.sizes,
    required this.colors,
    required this.brand,
    required this.discountPercentage,
    required this.tags,
    required this.inventory,
    required this.rating,
    required this.isNewArrival,
    required this.isSale,
  });
  late final String uid;
  late final String name;
  late final String description;
  late final double price;
  late final List<String> images;
  late final List<String> categories;
  late final List<String> sizes;
  late final List<String> colors;
  late final String brand;
  late final int discountPercentage;
  late final List<String> tags;
  late final int inventory;
  late final double rating;
  late final bool isNewArrival;
  late final bool isSale;

  factory ProductModel.fromMap(Map<String, dynamic> map, String documentId) {
    return ProductModel(
      uid: map['uid'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      price: map['price'] ?? 0,
      images: map['images'] ?? [],
      categories: map['categories'] ?? [],
      sizes: map['sizes'] ?? [],
      colors: map['colors'] ?? [],
      brand: map['brand'] ?? '',
      discountPercentage: map['discountPercentage'] ?? 0,
      tags: map['tags'] ?? [],
      inventory: map['inventory'] ?? 0,
      rating: map['rating'] ?? 0,
      isNewArrival: map['isNewArrival'] ?? false,
      isSale: map['isSale'] ?? false,
    );
  }

  ProductModel.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    images = List.castFrom<dynamic, String>(json['images']);
    categories = List.castFrom<dynamic, String>(json['categories']);
    sizes = List.castFrom<dynamic, String>(json['sizes']);
    colors = List.castFrom<dynamic, String>(json['colors']);
    brand = json['brand'];
    discountPercentage = json['discountPercentage'];
    tags = List.castFrom<dynamic, String>(json['tags']);
    inventory = json['inventory'];
    rating = json['rating'];
    isNewArrival = json['isNewArrival'];
    isSale = json['isSale'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['uid'] = uid;
    data['name'] = name;
    data['description'] = description;
    data['price'] = price;
    data['images'] = images;
    data['categories'] = categories;
    data['sizes'] = sizes;
    data['colors'] = colors;
    data['brand'] = brand;
    data['discountPercentage'] = discountPercentage;
    data['tags'] = tags;
    data['inventory'] = inventory;
    data['rating'] = rating;
    data['isNewArrival'] = isNewArrival;
    data['isSale'] = isSale;
    return data;
  }

  static List<ProductModel> dummyClothProducts = [
    ProductModel(
      uid: "1",
      name: "Casual T-Shirt",
      description: "Comfortable cotton T-shirt for everyday wear.",
      price: 19.99,
      images: [
        "https://f.nooncdn.com/p/pzsku/Z12BC670E3385CE8E802CZ/45/_/1698170649/ec124729-3d88-4577-80b2-3b574b35de73.jpg",
        "https://f.nooncdn.com/p/pzsku/Z12BC670E3385CE8E802CZ/45/_/1698170648/c3ba8706-1e48-4f9d-aa84-03430dfd0e91.jpg",
        "https://f.nooncdn.com/p/pzsku/Z12BC670E3385CE8E802CZ/45/_/1698170650/3cc6a9b0-8f5f-4c5b-9a27-7003aa175e4f.jpg",
        "https://f.nooncdn.com/p/pzsku/Z12BC670E3385CE8E802CZ/45/_/1698170678/dac2f79a-5467-4111-bf45-faa8bc97a9dc.jpg",
      ],
      categories: ["clothing", "menswear"],
      sizes: ["S", "M", "L"],
      colors: ["Blue", "White", "Black"],
      brand: "FashionStyle",
      discountPercentage: 0,
      tags: ["Casual", "Comfortable"],
      inventory: 150,
      rating: 4.2,
      isNewArrival: true,
      isSale: false,
    ),
    ProductModel(
      uid: "2",
      name: "Slim Fit Jeans",
      description: "Classic slim fit jeans for a modern look.",
      price: 49.99,
      images: [
        "https://f.nooncdn.com/p/pzsku/Z9506FA69725DA688C574Z/45/_/1699379901/70e824b2-fd21-4695-a9e1-2da98d90be3a.jpg",
        "https://f.nooncdn.com/p/pzsku/Z9506FA69725DA688C574Z/45/_/1699379902/5b8c0bd5-ebbb-4aa0-b741-cd661a25f414.jpg",
        "https://f.nooncdn.com/p/pzsku/Z9506FA69725DA688C574Z/45/_/1699379902/6fc47c7d-4266-4645-a6c1-efe48ccabc83.jpg",
        "https://f.nooncdn.com/p/pzsku/Z9506FA69725DA688C574Z/45/_/1699379952/f57ddd8d-17a4-41d9-a9ce-4e4fbf202b6f.jpg",
      ],
      categories: ["clothing", "menswear"],
      sizes: ["30x32", "32x32", "34x32"],
      colors: ["Black", "Denim Blue"],
      brand: "UrbanChic",
      discountPercentage: 15,
      tags: ["Slim Fit", "Denim"],
      inventory: 100,
      rating: 4.5,
      isNewArrival: false,
      isSale: true,
    ),
    ProductModel(
      uid: "3",
      name: "Summer Dress",
      description: "Light and breezy dress for summer days.",
      price: 39.99,
      images: [
        "https://f.nooncdn.com/p/pzsku/ZDD50983ABF35D5FD6B17Z/45/_/1663071997/5facef50-b4b1-4af9-b83b-dd81ed5f406a.jpg",
        "https://f.nooncdn.com/p/pzsku/ZDD50983ABF35D5FD6B17Z/45/_/1663071997/b947bd80-41db-4808-a82e-77ec9353ab67.jpg",
        "https://f.nooncdn.com/p/pzsku/ZDD50983ABF35D5FD6B17Z/45/_/1663071997/e0852944-a8a3-4c3a-9949-3aec870381a7.jpg",
        "https://f.nooncdn.com/p/pzsku/ZDD50983ABF35D5FD6B17Z/45/_/1663071997/07dfd196-7327-4270-808b-e11a650ea916.jpg",
      ],
      categories: ["clothing", "womenswear"],
      sizes: ["XS", "S", "M"],
      colors: ["Pink", "Floral"],
      brand: "TrendyStyles",
      discountPercentage: 0,
      tags: ["Summer", "Floral"],
      inventory: 120,
      rating: 4.0,
      isNewArrival: true,
      isSale: false,
    ),
  ];
}

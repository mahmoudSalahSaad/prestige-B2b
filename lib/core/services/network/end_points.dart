class EndPoints {
  static const String categories = '/categories';
  static const String sliders = '/sliders';
  static const String productList = '/products';
  static String productdetails(String slug) => '/products/$slug';
  static String getProductsByCategory(String category) =>
      'categories/$category/products';
}

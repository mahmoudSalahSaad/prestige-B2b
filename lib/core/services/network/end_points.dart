class EndPoints {
  static const String categories = '/categories';
  static const String categoriesChildern = '/categories/children';
  static const String sliders = '/sliders';
  static const String productList = '/products';
  static String productdetails(String slug) => '/products/product-1';
  static String getProductsByCategory(String category) =>
      '/categories/$category/products';
}

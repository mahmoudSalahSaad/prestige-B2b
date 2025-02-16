class EndPoints {
  static const String login = '/customers/login';
  static const String register = '/customers/register';
  static const String changePassword = '/customers/change-password';
  static const String removeAccount = '/customers/remove-account';
  static const String updateProfile = '/customers/update-profile';
  static const String categories = '/categories';
  static const String categoriesChildern = '/categories/children';
  static const String sliders = '/sliders';
  static const String productList = '/products';
  static String productdetails(String slug) => '/products/product-1';

  static String getProductsByCategory(String category) =>
      '/categories/$category/products';

  static String addToCart = "/add-to-cart";
  static String addItemToCart(String id) => "/cart/$id/increase";
  static String removeItemToCart(String id) => "/cart/$id/decrease";
  static String myCart = "/my-cart";
  static String checkout = "/orders/checkout";
  static String myOrders = "/my-orders";
  static String getCountries = "/countries";
  static String resetPassword = "/customers/reset-password";
  static String forgetPassword = "/customers/forget-password/send-otp";
  static String getCities(int countryId) => "/countries/$countryId/cities";
  static String getAddresses = "/addresses";
  static String addAddress = "/addresses/store";
  static String shippingMethods = "/shippings";
  static String updateAddress(String id) => "/addresses/$id/update";
  static String deleteAddress(String id) => "/addresses/$id/delete";
}

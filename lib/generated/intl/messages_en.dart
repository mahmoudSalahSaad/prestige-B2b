// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(quantity, unit) => "Added ${quantity} ${unit} to cart";

  static String m1(count) => "Based on ${count} Reviews";

  static String m2(buyQuantity, buyProduct, getProduct) =>
      "Buy ${buyQuantity} ${buyProduct} and get ${getProduct}";

  static String m3(x, y, product) => "Buy ${x} And Get ${y} ${product}";

  static String m4(items) => "Min Items: ${items}";

  static String m5(phone) => "OTP sent to ${phone}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "about_us": MessageLookupByLibrary.simpleMessage("About Us"),
    "account": MessageLookupByLibrary.simpleMessage("Account"),
    "account_created": MessageLookupByLibrary.simpleMessage(
      "Account created successfully.",
    ),
    "account_creation_failed": MessageLookupByLibrary.simpleMessage(
      "Failed to create account.",
    ),
    "account_deleted": MessageLookupByLibrary.simpleMessage(
      "Account deleted successfully.",
    ),
    "account_deletion_failed": MessageLookupByLibrary.simpleMessage(
      "Failed to delete account.",
    ),
    "add": MessageLookupByLibrary.simpleMessage("Add"),
    "add_products_before_checkout": MessageLookupByLibrary.simpleMessage(
      "Add some products to your cart before checkout",
    ),
    "add_to_cart": MessageLookupByLibrary.simpleMessage("Add to cart"),
    "added_quantity_to_cart": m0,
    "address": MessageLookupByLibrary.simpleMessage("Address"),
    "address_line": MessageLookupByLibrary.simpleMessage("Address"),
    "address_name": MessageLookupByLibrary.simpleMessage("Address name"),
    "addresses": MessageLookupByLibrary.simpleMessage("Addresses"),
    "app_language": MessageLookupByLibrary.simpleMessage("App Language"),
    "available": MessageLookupByLibrary.simpleMessage("Available"),
    "back": MessageLookupByLibrary.simpleMessage("Back"),
    "based_on_reviews": m1,
    "basic_info": MessageLookupByLibrary.simpleMessage("Basic Info"),
    "billing_address": MessageLookupByLibrary.simpleMessage("Billing address"),
    "bust": MessageLookupByLibrary.simpleMessage("Bust"),
    "buy": MessageLookupByLibrary.simpleMessage("Buy"),
    "buy_and_get": m2,
    "buy_now": MessageLookupByLibrary.simpleMessage("Buy now"),
    "buy_x_get_y": m3,
    "camera": MessageLookupByLibrary.simpleMessage("Camera"),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "canceled": MessageLookupByLibrary.simpleMessage("Canceled"),
    "cart_nav": MessageLookupByLibrary.simpleMessage("Cart"),
    "cash_on_delivery": MessageLookupByLibrary.simpleMessage(
      "Cash on Delivery",
    ),
    "cash_on_delivery_description": MessageLookupByLibrary.simpleMessage(
      "Pay when you receive your order",
    ),
    "categories": MessageLookupByLibrary.simpleMessage("Categories"),
    "change_address": MessageLookupByLibrary.simpleMessage("Change Address"),
    "change_password": MessageLookupByLibrary.simpleMessage("Change Password"),
    "checkout": MessageLookupByLibrary.simpleMessage("Checkout"),
    "choose_shipping_method": MessageLookupByLibrary.simpleMessage(
      "Choose a shipping method",
    ),
    "city": MessageLookupByLibrary.simpleMessage("City"),
    "commercial_register": MessageLookupByLibrary.simpleMessage(
      "Commercial Register",
    ),
    "company": MessageLookupByLibrary.simpleMessage("Company"),
    "company_name": MessageLookupByLibrary.simpleMessage("Company Name"),
    "company_name_optional": MessageLookupByLibrary.simpleMessage(
      "Company Name (Optional)",
    ),
    "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
    "confirm_credit_payment": MessageLookupByLibrary.simpleMessage(
      "Confirm Credit Payment",
    ),
    "confirm_delete": MessageLookupByLibrary.simpleMessage("Confirm Delete"),
    "confirm_password": MessageLookupByLibrary.simpleMessage(
      "Confirm Password",
    ),
    "contact_us": MessageLookupByLibrary.simpleMessage("Contact Us"),
    "continue_shopping": MessageLookupByLibrary.simpleMessage(
      "Continue Shopping",
    ),
    "copy_link": MessageLookupByLibrary.simpleMessage("Copy link"),
    "country": MessageLookupByLibrary.simpleMessage("Country"),
    "create_new_address": MessageLookupByLibrary.simpleMessage(
      "Create New Address",
    ),
    "create_new_address_button": MessageLookupByLibrary.simpleMessage(
      "Create new address",
    ),
    "credit": MessageLookupByLibrary.simpleMessage("Credit"),
    "credit_debit_card": MessageLookupByLibrary.simpleMessage(
      "Credit/Debit Card",
    ),
    "credit_debit_card_description": MessageLookupByLibrary.simpleMessage(
      "Pay securely with your credit or debit card",
    ),
    "credit_description": MessageLookupByLibrary.simpleMessage(
      "Pay using your available credit balance",
    ),
    "credit_payment_confirmation": MessageLookupByLibrary.simpleMessage(
      "You will proceed with credit payment. The amount will be deducted from your credit balance.",
    ),
    "cvv": MessageLookupByLibrary.simpleMessage("CVV"),
    "date": MessageLookupByLibrary.simpleMessage("Date"),
    "deals": MessageLookupByLibrary.simpleMessage("Deals"),
    "default_billing_address": MessageLookupByLibrary.simpleMessage(
      "Default Billing Address",
    ),
    "default_billing_shipping": MessageLookupByLibrary.simpleMessage(
      "Default Billing & Shipping",
    ),
    "default_shipping_address": MessageLookupByLibrary.simpleMessage(
      "Default Shipping Address",
    ),
    "delete": MessageLookupByLibrary.simpleMessage("Delete"),
    "delete_all": MessageLookupByLibrary.simpleMessage("Delete All"),
    "delete_selected": MessageLookupByLibrary.simpleMessage("Delete Selected"),
    "delivered": MessageLookupByLibrary.simpleMessage("Delivered"),
    "delivery_date": MessageLookupByLibrary.simpleMessage("Delivery Date"),
    "delivery_fee": MessageLookupByLibrary.simpleMessage("Delivery Fee"),
    "discount": MessageLookupByLibrary.simpleMessage("Discount"),
    "do_you_have_account": MessageLookupByLibrary.simpleMessage(
      "Do you have an account?",
    ),
    "dont_have_account": MessageLookupByLibrary.simpleMessage(
      "Don\'t have an account?",
    ),
    "edit": MessageLookupByLibrary.simpleMessage("Edit"),
    "egypt": MessageLookupByLibrary.simpleMessage("Egypt"),
    "email": MessageLookupByLibrary.simpleMessage("Email"),
    "email_address": MessageLookupByLibrary.simpleMessage("Email address"),
    "email_verification_failed": MessageLookupByLibrary.simpleMessage(
      "Failed to verify email.",
    ),
    "email_verified": MessageLookupByLibrary.simpleMessage(
      "Email verified successfully.",
    ),
    "empty_cart": MessageLookupByLibrary.simpleMessage("Empty Cart"),
    "empty_state": MessageLookupByLibrary.simpleMessage("No items found"),
    "end_at": MessageLookupByLibrary.simpleMessage("End at"),
    "end_date": MessageLookupByLibrary.simpleMessage("End Date"),
    "enter_coupon_code": MessageLookupByLibrary.simpleMessage(
      "Enter your coupon code",
    ),
    "enter_otp": MessageLookupByLibrary.simpleMessage("Enter OTP"),
    "enter_valid_email": MessageLookupByLibrary.simpleMessage(
      "Enter a valid email address",
    ),
    "error": MessageLookupByLibrary.simpleMessage(
      "An error occurred. Please try again.",
    ),
    "error_loading_cart": MessageLookupByLibrary.simpleMessage(
      "Error loading cart",
    ),
    "failed_to_add_to_cart": MessageLookupByLibrary.simpleMessage(
      "Failed to add to cart",
    ),
    "faq": MessageLookupByLibrary.simpleMessage("FAQ"),
    "favorite": MessageLookupByLibrary.simpleMessage("Favorite"),
    "featured_products": MessageLookupByLibrary.simpleMessage(
      "Featured Products",
    ),
    "female": MessageLookupByLibrary.simpleMessage("Female"),
    "first_name": MessageLookupByLibrary.simpleMessage("First Name"),
    "forgot_password": MessageLookupByLibrary.simpleMessage("Forgot Password?"),
    "forgot_password_question": MessageLookupByLibrary.simpleMessage(
      "Forgot password?",
    ),
    "full_address": MessageLookupByLibrary.simpleMessage("Full address"),
    "full_address_optional": MessageLookupByLibrary.simpleMessage(
      "Full address (Optional)",
    ),
    "full_name": MessageLookupByLibrary.simpleMessage("Full name"),
    "gallery": MessageLookupByLibrary.simpleMessage("Gallery"),
    "get_full_code": MessageLookupByLibrary.simpleMessage("Get full code"),
    "get_full_template": MessageLookupByLibrary.simpleMessage(
      "Get the full template",
    ),
    "get_started": MessageLookupByLibrary.simpleMessage("Get Started"),
    "get_the_full_template": MessageLookupByLibrary.simpleMessage(
      "Get the full template",
    ),
    "good_morning": MessageLookupByLibrary.simpleMessage("Good Morning"),
    "group_type": MessageLookupByLibrary.simpleMessage(
      "Group (Wholesale, Merchant, Retails, Van Sales ...)",
    ),
    "group_type_optional": MessageLookupByLibrary.simpleMessage(
      "Group (Wholesale, Merchant, Retails, Van Sales ...) - Optional",
    ),
    "help_support": MessageLookupByLibrary.simpleMessage("Help & Support"),
    "hips": MessageLookupByLibrary.simpleMessage("Hips"),
    "home": MessageLookupByLibrary.simpleMessage("Home"),
    "home_nav": MessageLookupByLibrary.simpleMessage("Home"),
    "individual": MessageLookupByLibrary.simpleMessage("Individual"),
    "install_whatsapp_first": MessageLookupByLibrary.simpleMessage(
      "Install WhatsApp First Please",
    ),
    "invalid_otp": MessageLookupByLibrary.simpleMessage("Invalid OTP"),
    "jod": MessageLookupByLibrary.simpleMessage("JOD"),
    "join_our_world": MessageLookupByLibrary.simpleMessage("Join Our World"),
    "jordan_phone_start_7": MessageLookupByLibrary.simpleMessage(
      "Jordan phone numbers should start with 7",
    ),
    "jordan_phone_validation": MessageLookupByLibrary.simpleMessage(
      "Please enter a valid Jordan phone number (9 digits)",
    ),
    "language": MessageLookupByLibrary.simpleMessage("Language"),
    "last_name": MessageLookupByLibrary.simpleMessage("Last Name"),
    "lets_get_started": MessageLookupByLibrary.simpleMessage(
      "Let\'s get started!",
    ),
    "lets_start": MessageLookupByLibrary.simpleMessage("Let\'s Start"),
    "link_copied": MessageLookupByLibrary.simpleMessage("Link Copied"),
    "load_more": MessageLookupByLibrary.simpleMessage("Load More"),
    "load_more_cities": MessageLookupByLibrary.simpleMessage(
      "Load More Cities",
    ),
    "load_more_countries": MessageLookupByLibrary.simpleMessage(
      "Load More Countries",
    ),
    "loading": MessageLookupByLibrary.simpleMessage("Loading..."),
    "loading_text": MessageLookupByLibrary.simpleMessage("Loading"),
    "location": MessageLookupByLibrary.simpleMessage("Location"),
    "location_services_description": MessageLookupByLibrary.simpleMessage(
      "Turn on Location Services in your device Settings to search for stores by current location. You can still search by Country/Region, City or Zip Code.",
    ),
    "location_services_off": MessageLookupByLibrary.simpleMessage(
      "Your Location Services are turned off.",
    ),
    "log_in": MessageLookupByLibrary.simpleMessage("Log in"),
    "log_in_small": MessageLookupByLibrary.simpleMessage("Log in"),
    "log_out": MessageLookupByLibrary.simpleMessage("Log Out"),
    "login": MessageLookupByLibrary.simpleMessage("Login"),
    "login_as_visitor": MessageLookupByLibrary.simpleMessage(
      "Login as Visitor",
    ),
    "login_description": MessageLookupByLibrary.simpleMessage(
      "Log in with your data that you entered during your registration.",
    ),
    "logout": MessageLookupByLibrary.simpleMessage("Logout"),
    "lost_password_description": MessageLookupByLibrary.simpleMessage(
      "Please enter your valid data in order to restore your account.",
    ),
    "lost_password_title": MessageLookupByLibrary.simpleMessage(
      "Lost your password?",
    ),
    "male": MessageLookupByLibrary.simpleMessage("Male"),
    "mark_all_as_read": MessageLookupByLibrary.simpleMessage(
      "Mark All as Read",
    ),
    "mark_all_as_unread": MessageLookupByLibrary.simpleMessage(
      "Mark All as Unread",
    ),
    "mark_as_read": MessageLookupByLibrary.simpleMessage("Mark as Read"),
    "mark_as_unread": MessageLookupByLibrary.simpleMessage("Mark as Unread"),
    "message": MessageLookupByLibrary.simpleMessage("Message"),
    "min_amount": MessageLookupByLibrary.simpleMessage("Min Amount"),
    "min_items": m4,
    "more": MessageLookupByLibrary.simpleMessage("More"),
    "must_have_address_to_checkout": MessageLookupByLibrary.simpleMessage(
      "You must have an address to checkout. Please create an address first.",
    ),
    "mustafa": MessageLookupByLibrary.simpleMessage("Mustafa"),
    "my_addresses": MessageLookupByLibrary.simpleMessage("My Addresses"),
    "my_files": MessageLookupByLibrary.simpleMessage("My Files"),
    "my_orders": MessageLookupByLibrary.simpleMessage("My Orders"),
    "my_profile": MessageLookupByLibrary.simpleMessage("My Profile"),
    "name": MessageLookupByLibrary.simpleMessage("Name"),
    "national_id": MessageLookupByLibrary.simpleMessage("National ID"),
    "new_orders": MessageLookupByLibrary.simpleMessage("New Orders"),
    "new_password": MessageLookupByLibrary.simpleMessage("New Password"),
    "next": MessageLookupByLibrary.simpleMessage("Next"),
    "no": MessageLookupByLibrary.simpleMessage("No"),
    "no_notifications": MessageLookupByLibrary.simpleMessage(
      "No notifications available.",
    ),
    "no_payment_methods_available": MessageLookupByLibrary.simpleMessage(
      "No payment methods available!!",
    ),
    "no_product_found": MessageLookupByLibrary.simpleMessage(
      "Oops, No Product found!!",
    ),
    "no_results": MessageLookupByLibrary.simpleMessage("No results found."),
    "no_shipping_methods": MessageLookupByLibrary.simpleMessage(
      "No shipping methods available!!",
    ),
    "no_shipping_methods_available": MessageLookupByLibrary.simpleMessage(
      "No shipping methods available!!",
    ),
    "not_found_route": MessageLookupByLibrary.simpleMessage("Not found route"),
    "notification": MessageLookupByLibrary.simpleMessage("Notification"),
    "notification_settings": MessageLookupByLibrary.simpleMessage(
      "Notification Settings",
    ),
    "notification_settings_description": MessageLookupByLibrary.simpleMessage(
      "Manage your notification preferences.",
    ),
    "notification_settings_email": MessageLookupByLibrary.simpleMessage(
      "Email Notifications",
    ),
    "notification_settings_email_description":
        MessageLookupByLibrary.simpleMessage(
          "Receive notifications via email.",
        ),
    "notification_settings_email_disabled":
        MessageLookupByLibrary.simpleMessage("Email notifications disabled."),
    "notification_settings_email_enabled": MessageLookupByLibrary.simpleMessage(
      "Email notifications enabled.",
    ),
    "notification_settings_in_app": MessageLookupByLibrary.simpleMessage(
      "In-App Notifications",
    ),
    "notification_settings_in_app_description":
        MessageLookupByLibrary.simpleMessage(
          "Receive notifications within the app.",
        ),
    "notification_settings_push": MessageLookupByLibrary.simpleMessage(
      "Push Notifications",
    ),
    "notification_settings_push_description":
        MessageLookupByLibrary.simpleMessage(
          "Receive notifications on your device.",
        ),
    "notification_settings_push_disabled": MessageLookupByLibrary.simpleMessage(
      "Push notifications disabled.",
    ),
    "notification_settings_push_enabled": MessageLookupByLibrary.simpleMessage(
      "Push notifications enabled.",
    ),
    "notification_settings_sms": MessageLookupByLibrary.simpleMessage(
      "SMS Notifications",
    ),
    "notification_settings_sms_description":
        MessageLookupByLibrary.simpleMessage("Receive notifications via SMS."),
    "notification_settings_sms_disabled": MessageLookupByLibrary.simpleMessage(
      "SMS notifications disabled.",
    ),
    "notification_settings_sms_enabled": MessageLookupByLibrary.simpleMessage(
      "SMS notifications enabled.",
    ),
    "notification_settings_update_failed": MessageLookupByLibrary.simpleMessage(
      "Failed to update notification settings.",
    ),
    "notification_settings_updated": MessageLookupByLibrary.simpleMessage(
      "Notification settings updated successfully.",
    ),
    "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
    "office": MessageLookupByLibrary.simpleMessage("Office"),
    "old_password": MessageLookupByLibrary.simpleMessage("Old Password"),
    "or": MessageLookupByLibrary.simpleMessage("or"),
    "order": MessageLookupByLibrary.simpleMessage("Order"),
    "ordered": MessageLookupByLibrary.simpleMessage("Ordered"),
    "orders": MessageLookupByLibrary.simpleMessage("Orders"),
    "other": MessageLookupByLibrary.simpleMessage("Other"),
    "otp_sent_to_phone": m5,
    "otp_verified_successfully": MessageLookupByLibrary.simpleMessage(
      "OTP verified successfully! You can now login.",
    ),
    "packed": MessageLookupByLibrary.simpleMessage("Packed"),
    "passport": MessageLookupByLibrary.simpleMessage("Passport"),
    "password": MessageLookupByLibrary.simpleMessage("Password"),
    "password_change_failed": MessageLookupByLibrary.simpleMessage(
      "Failed to change password.",
    ),
    "password_changed": MessageLookupByLibrary.simpleMessage(
      "Password changed successfully.",
    ),
    "password_no_match": MessageLookupByLibrary.simpleMessage(
      "Password doesn\'t match",
    ),
    "password_reset": MessageLookupByLibrary.simpleMessage(
      "Password reset link sent to your email.",
    ),
    "password_reset_email_failed": MessageLookupByLibrary.simpleMessage(
      "Failed to send password reset email.",
    ),
    "password_reset_email_sent": MessageLookupByLibrary.simpleMessage(
      "Password reset email has been sent.",
    ),
    "password_reset_failed": MessageLookupByLibrary.simpleMessage(
      "Failed to send password reset link.",
    ),
    "password_reset_link_expired": MessageLookupByLibrary.simpleMessage(
      "Password reset link has expired.",
    ),
    "password_reset_link_failed": MessageLookupByLibrary.simpleMessage(
      "Failed to send password reset link.",
    ),
    "password_reset_link_invalid": MessageLookupByLibrary.simpleMessage(
      "Password reset link is invalid or expired.",
    ),
    "password_reset_link_invalid_agent": MessageLookupByLibrary.simpleMessage(
      "Password reset link has an invalid user agent.",
    ),
    "password_reset_link_invalid_code": MessageLookupByLibrary.simpleMessage(
      "Password reset link has an invalid code.",
    ),
    "password_reset_link_invalid_email": MessageLookupByLibrary.simpleMessage(
      "Password reset link has an invalid email address.",
    ),
    "password_reset_link_invalid_ip": MessageLookupByLibrary.simpleMessage(
      "Password reset link has an invalid IP address.",
    ),
    "password_reset_link_invalid_method": MessageLookupByLibrary.simpleMessage(
      "Password reset link has an invalid method.",
    ),
    "password_reset_link_invalid_request": MessageLookupByLibrary.simpleMessage(
      "Password reset link has an invalid request.",
    ),
    "password_reset_link_invalid_token": MessageLookupByLibrary.simpleMessage(
      "Password reset link has an invalid token.",
    ),
    "password_reset_link_invalid_url": MessageLookupByLibrary.simpleMessage(
      "Password reset link has an invalid URL.",
    ),
    "password_reset_link_invalid_user": MessageLookupByLibrary.simpleMessage(
      "Password reset link has an invalid user.",
    ),
    "password_reset_link_not_found": MessageLookupByLibrary.simpleMessage(
      "Password reset link not found.",
    ),
    "password_reset_link_sent": MessageLookupByLibrary.simpleMessage(
      "Password reset link has been sent to your email.",
    ),
    "password_reset_link_successful": MessageLookupByLibrary.simpleMessage(
      "Password reset link is valid.",
    ),
    "password_reset_link_unsuccessful": MessageLookupByLibrary.simpleMessage(
      "Failed to validate password reset link.",
    ),
    "password_reset_link_used": MessageLookupByLibrary.simpleMessage(
      "Password reset link has already been used.",
    ),
    "password_reset_success": MessageLookupByLibrary.simpleMessage(
      "Password reset link has been sent to your email.",
    ),
    "password_reset_successful": MessageLookupByLibrary.simpleMessage(
      "Password has been reset successfully.",
    ),
    "password_reset_unsuccessful": MessageLookupByLibrary.simpleMessage(
      "Failed to reset password. Please try again.",
    ),
    "passwords_match": MessageLookupByLibrary.simpleMessage("Passwords match"),
    "passwords_no_match": MessageLookupByLibrary.simpleMessage(
      "passwords do not match",
    ),
    "payment": MessageLookupByLibrary.simpleMessage("Payment"),
    "payment_confirmation": MessageLookupByLibrary.simpleMessage(
      "Payment Confirmation",
    ),
    "payment_method": MessageLookupByLibrary.simpleMessage("Payment Method"),
    "payment_redirect_message": MessageLookupByLibrary.simpleMessage(
      "You will be redirected to PayTabs to complete your payment. If you cancel the payment, your order will still be created and you can pay later.",
    ),
    "payment_summary": MessageLookupByLibrary.simpleMessage("Payment Summary"),
    "phone": MessageLookupByLibrary.simpleMessage("Phone"),
    "phone_number": MessageLookupByLibrary.simpleMessage("Phone Number"),
    "phone_number_not_provided": MessageLookupByLibrary.simpleMessage(
      "Phone number not provided. Please try again.",
    ),
    "phone_number_optional": MessageLookupByLibrary.simpleMessage(
      "Phone Number (Optional)",
    ),
    "place_order": MessageLookupByLibrary.simpleMessage("Place Order"),
    "please_select_city": MessageLookupByLibrary.simpleMessage(
      "Please select a city",
    ),
    "please_select_country": MessageLookupByLibrary.simpleMessage(
      "Please select a country",
    ),
    "please_select_country_first": MessageLookupByLibrary.simpleMessage(
      "Please select a country first",
    ),
    "please_select_delivery_date": MessageLookupByLibrary.simpleMessage(
      "Please select delivery date",
    ),
    "please_select_payment_method": MessageLookupByLibrary.simpleMessage(
      "Please select payment method",
    ),
    "please_select_shipping_method": MessageLookupByLibrary.simpleMessage(
      "Please select shipping method",
    ),
    "please_select_variation": MessageLookupByLibrary.simpleMessage(
      "Please select a variation",
    ),
    "pormotions": MessageLookupByLibrary.simpleMessage("Promotions"),
    "postal_code": MessageLookupByLibrary.simpleMessage("Postal Code"),
    "postal_code_optional": MessageLookupByLibrary.simpleMessage(
      "Postal Code (Optional)",
    ),
    "prestige": MessageLookupByLibrary.simpleMessage("PRESTIGE"),
    "prestige_brand": MessageLookupByLibrary.simpleMessage("PRESTIGE"),
    "previous": MessageLookupByLibrary.simpleMessage("Previous"),
    "price": MessageLookupByLibrary.simpleMessage("Price"),
    "privacy_policy": MessageLookupByLibrary.simpleMessage("Privacy Policy"),
    "privacy_policy_title": MessageLookupByLibrary.simpleMessage(
      "Privacy Policy",
    ),
    "proceed_to_payment": MessageLookupByLibrary.simpleMessage(
      "Proceed to Payment",
    ),
    "processing": MessageLookupByLibrary.simpleMessage("Processing"),
    "product_added_to_cart": MessageLookupByLibrary.simpleMessage(
      "Product added to cart",
    ),
    "product_details": MessageLookupByLibrary.simpleMessage("Product Details"),
    "product_info": MessageLookupByLibrary.simpleMessage("Product info"),
    "products": MessageLookupByLibrary.simpleMessage("Products"),
    "profile": MessageLookupByLibrary.simpleMessage("Profile"),
    "profile_nav": MessageLookupByLibrary.simpleMessage("Profile"),
    "profile_update_failed": MessageLookupByLibrary.simpleMessage(
      "Failed to update profile.",
    ),
    "profile_updated": MessageLookupByLibrary.simpleMessage(
      "Profile updated successfully.",
    ),
    "promotion_description": MessageLookupByLibrary.simpleMessage(
      "Promotion Description",
    ),
    "promotion_title": MessageLookupByLibrary.simpleMessage("Promotion Title"),
    "promotions": MessageLookupByLibrary.simpleMessage("Promotions"),
    "promotions_nav": MessageLookupByLibrary.simpleMessage("Promotions"),
    "quantity": MessageLookupByLibrary.simpleMessage("Quantity"),
    "rate_app": MessageLookupByLibrary.simpleMessage("Rate App"),
    "rates": MessageLookupByLibrary.simpleMessage("Rates"),
    "register": MessageLookupByLibrary.simpleMessage("Register"),
    "remove": MessageLookupByLibrary.simpleMessage("Remove"),
    "remove_account_confirmation": MessageLookupByLibrary.simpleMessage(
      "Are you sure you want to remove your account ?",
    ),
    "required": MessageLookupByLibrary.simpleMessage("required"),
    "reset_password": MessageLookupByLibrary.simpleMessage("Reset Password"),
    "retry": MessageLookupByLibrary.simpleMessage("Retry"),
    "return1": MessageLookupByLibrary.simpleMessage("Return"),
    "return_to": MessageLookupByLibrary.simpleMessage("Return"),
    "return_to_login": MessageLookupByLibrary.simpleMessage("return to"),
    "returns": MessageLookupByLibrary.simpleMessage("Returns"),
    "returns_description": MessageLookupByLibrary.simpleMessage(
      "Free pre-paid returns and exchanges for orders shipped to the US. Get refunded faster with easy online returns and print a FREE pre-paid return SmartLabel@ online! Return or exchange any unused or defective merchandise by mail or at one of our US or Canada store locations. Made to order items cannot be canceled, exchange or returned.",
    ),
    "review_the_products": MessageLookupByLibrary.simpleMessage(
      "Review the products",
    ),
    "review_your_order": MessageLookupByLibrary.simpleMessage(
      "Review Your Order",
    ),
    "reviews": MessageLookupByLibrary.simpleMessage("Reviews"),
    "save": MessageLookupByLibrary.simpleMessage("Save"),
    "search": MessageLookupByLibrary.simpleMessage("Search"),
    "select": MessageLookupByLibrary.simpleMessage("Select"),
    "select_action": MessageLookupByLibrary.simpleMessage("Select Action"),
    "select_address_option": MessageLookupByLibrary.simpleMessage(
      "Please select at least one address option",
    ),
    "select_all": MessageLookupByLibrary.simpleMessage("Select All"),
    "select_city": MessageLookupByLibrary.simpleMessage("Select City"),
    "select_city_optional": MessageLookupByLibrary.simpleMessage(
      "Select City (Optional)",
    ),
    "select_country": MessageLookupByLibrary.simpleMessage("Select Country"),
    "select_country_optional": MessageLookupByLibrary.simpleMessage(
      "Select Country (Optional)",
    ),
    "select_image_source": MessageLookupByLibrary.simpleMessage(
      "Select Image Source",
    ),
    "select_invert": MessageLookupByLibrary.simpleMessage("Select Invert"),
    "select_items": MessageLookupByLibrary.simpleMessage("Select Items"),
    "select_none": MessageLookupByLibrary.simpleMessage("Select None"),
    "selected_items": MessageLookupByLibrary.simpleMessage("Selected Items"),
    "send": MessageLookupByLibrary.simpleMessage("Send"),
    "send_reset_link": MessageLookupByLibrary.simpleMessage("Send Reset Link"),
    "services": MessageLookupByLibrary.simpleMessage("Services"),
    "settings": MessageLookupByLibrary.simpleMessage("Settings"),
    "settings_button": MessageLookupByLibrary.simpleMessage("Settings"),
    "settings_label": MessageLookupByLibrary.simpleMessage("Settings"),
    "shipped": MessageLookupByLibrary.simpleMessage("Shipped"),
    "shipping_address": MessageLookupByLibrary.simpleMessage(
      "Shipping address",
    ),
    "shipping_information": MessageLookupByLibrary.simpleMessage(
      "Shipping Information",
    ),
    "shipping_methods": MessageLookupByLibrary.simpleMessage(
      "Shipping Methods",
    ),
    "shop_nav": MessageLookupByLibrary.simpleMessage("Shop"),
    "shop_now": MessageLookupByLibrary.simpleMessage("Shop Now"),
    "sign_up": MessageLookupByLibrary.simpleMessage("Sign up"),
    "signup": MessageLookupByLibrary.simpleMessage("Sign Up"),
    "signup_description": MessageLookupByLibrary.simpleMessage(
      "Please enter your valid data in order to create an account.",
    ),
    "size": MessageLookupByLibrary.simpleMessage("Size"),
    "size_l": MessageLookupByLibrary.simpleMessage("L"),
    "size_m": MessageLookupByLibrary.simpleMessage("M"),
    "size_s": MessageLookupByLibrary.simpleMessage("S"),
    "size_xl": MessageLookupByLibrary.simpleMessage("XL"),
    "state": MessageLookupByLibrary.simpleMessage("State"),
    "status": MessageLookupByLibrary.simpleMessage("status"),
    "sub_total": MessageLookupByLibrary.simpleMessage("Sub Total"),
    "subject": MessageLookupByLibrary.simpleMessage("Subject"),
    "submit": MessageLookupByLibrary.simpleMessage("Submit"),
    "terms_and_conditions": MessageLookupByLibrary.simpleMessage(
      "Terms and Conditions",
    ),
    "the_cancelled": MessageLookupByLibrary.simpleMessage("Cancelled"),
    "the_completed": MessageLookupByLibrary.simpleMessage("Completed"),
    "time": MessageLookupByLibrary.simpleMessage("Time"),
    "total": MessageLookupByLibrary.simpleMessage("Total"),
    "total_price": MessageLookupByLibrary.simpleMessage("Total price"),
    "unable_to_process": MessageLookupByLibrary.simpleMessage(
      "Unable to process the data",
    ),
    "unavailable": MessageLookupByLibrary.simpleMessage("Unavailable"),
    "unexpected_error": MessageLookupByLibrary.simpleMessage(
      "Unexpected error occurred",
    ),
    "unit_bag": MessageLookupByLibrary.simpleMessage("Bag"),
    "unit_piece": MessageLookupByLibrary.simpleMessage("Piece"),
    "unit_price": MessageLookupByLibrary.simpleMessage("Unit price"),
    "unselect": MessageLookupByLibrary.simpleMessage("Unselect"),
    "update": MessageLookupByLibrary.simpleMessage("Update"),
    "update_address": MessageLookupByLibrary.simpleMessage("Update Address"),
    "upload_commercial_register": MessageLookupByLibrary.simpleMessage(
      "Upload your Commercial Register here",
    ),
    "upload_official_paper": MessageLookupByLibrary.simpleMessage(
      "Upload your Official Paper here",
    ),
    "username": MessageLookupByLibrary.simpleMessage("Username"),
    "variations": MessageLookupByLibrary.simpleMessage("Variations"),
    "vat_number": MessageLookupByLibrary.simpleMessage("VAT Number"),
    "vat_number_optional": MessageLookupByLibrary.simpleMessage(
      "VAT Number (Optional)",
    ),
    "verify_account": MessageLookupByLibrary.simpleMessage("Verify Account"),
    "verify_account_description": MessageLookupByLibrary.simpleMessage(
      "Please enter the OTP sent to your phone number to verify your account.",
    ),
    "video": MessageLookupByLibrary.simpleMessage("Video"),
    "view_all": MessageLookupByLibrary.simpleMessage("View All"),
    "waist": MessageLookupByLibrary.simpleMessage("Waist"),
    "wallet": MessageLookupByLibrary.simpleMessage("Wallet"),
    "want_to_change_password": MessageLookupByLibrary.simpleMessage(
      "Want To Change Password ?",
    ),
    "welcome": MessageLookupByLibrary.simpleMessage(
      "Welcome to our application!",
    ),
    "welcome_back": MessageLookupByLibrary.simpleMessage("Welcome back!"),
    "welcome_to_app": MessageLookupByLibrary.simpleMessage(
      "Welcome to our app",
    ),
    "whatsapp_not_installed": MessageLookupByLibrary.simpleMessage(
      "WhatsApp not installed",
    ),
    "yes": MessageLookupByLibrary.simpleMessage("Yes"),
    "you_may_also_like": MessageLookupByLibrary.simpleMessage(
      "You may also like",
    ),
    "your_cart_is_empty": MessageLookupByLibrary.simpleMessage(
      "Your cart is empty",
    ),
    "zip": MessageLookupByLibrary.simpleMessage("Zip Code"),
  };
}

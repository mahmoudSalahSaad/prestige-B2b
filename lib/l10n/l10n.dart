import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'l10n_ar.dart';
import 'l10n_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of S
/// returned by `S.of(context)`.
///
/// Applications need to include `S.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/l10n.dart';
///
/// return MaterialApp(
///   localizationsDelegates: S.localizationsDelegates,
///   supportedLocales: S.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the S.supportedLocales
/// property.
abstract class S {
  S(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static S? of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  static const LocalizationsDelegate<S> delegate = _SDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome to our application!'**
  String get welcome;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'An error occurred. Please try again.'**
  String get error;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @no_results.
  ///
  /// In en, this message translates to:
  /// **'No results found.'**
  String get no_results;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @remove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get remove;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @address_name.
  ///
  /// In en, this message translates to:
  /// **'Address name'**
  String get address_name;

  /// No description provided for @address_line.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address_line;

  /// No description provided for @city.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get city;

  /// No description provided for @state.
  ///
  /// In en, this message translates to:
  /// **'State'**
  String get state;

  /// No description provided for @zip.
  ///
  /// In en, this message translates to:
  /// **'Zip Code'**
  String get zip;

  /// No description provided for @country.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get country;

  /// No description provided for @profile_updated.
  ///
  /// In en, this message translates to:
  /// **'Profile updated successfully.'**
  String get profile_updated;

  /// No description provided for @profile_update_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed to update profile.'**
  String get profile_update_failed;

  /// No description provided for @password_reset.
  ///
  /// In en, this message translates to:
  /// **'Password reset link sent to your email.'**
  String get password_reset;

  /// No description provided for @password_reset_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed to send password reset link.'**
  String get password_reset_failed;

  /// No description provided for @password_changed.
  ///
  /// In en, this message translates to:
  /// **'Password changed successfully.'**
  String get password_changed;

  /// No description provided for @password_change_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed to change password.'**
  String get password_change_failed;

  /// No description provided for @email_verified.
  ///
  /// In en, this message translates to:
  /// **'Email verified successfully.'**
  String get email_verified;

  /// No description provided for @email_verification_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed to verify email.'**
  String get email_verification_failed;

  /// No description provided for @account_created.
  ///
  /// In en, this message translates to:
  /// **'Account created successfully.'**
  String get account_created;

  /// No description provided for @account_creation_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed to create account.'**
  String get account_creation_failed;

  /// No description provided for @account_deleted.
  ///
  /// In en, this message translates to:
  /// **'Account deleted successfully.'**
  String get account_deleted;

  /// No description provided for @account_deletion_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete account.'**
  String get account_deletion_failed;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @view_all.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get view_all;

  /// No description provided for @mark_as_read.
  ///
  /// In en, this message translates to:
  /// **'Mark as Read'**
  String get mark_as_read;

  /// No description provided for @mark_as_unread.
  ///
  /// In en, this message translates to:
  /// **'Mark as Unread'**
  String get mark_as_unread;

  /// No description provided for @mark_all_as_read.
  ///
  /// In en, this message translates to:
  /// **'Mark All as Read'**
  String get mark_all_as_read;

  /// No description provided for @mark_all_as_unread.
  ///
  /// In en, this message translates to:
  /// **'Mark All as Unread'**
  String get mark_all_as_unread;

  /// No description provided for @delete_all.
  ///
  /// In en, this message translates to:
  /// **'Delete All'**
  String get delete_all;

  /// No description provided for @delete_selected.
  ///
  /// In en, this message translates to:
  /// **'Delete Selected'**
  String get delete_selected;

  /// No description provided for @select_all.
  ///
  /// In en, this message translates to:
  /// **'Select All'**
  String get select_all;

  /// No description provided for @select_none.
  ///
  /// In en, this message translates to:
  /// **'Select None'**
  String get select_none;

  /// No description provided for @select_invert.
  ///
  /// In en, this message translates to:
  /// **'Select Invert'**
  String get select_invert;

  /// No description provided for @select.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get select;

  /// No description provided for @unselect.
  ///
  /// In en, this message translates to:
  /// **'Unselect'**
  String get unselect;

  /// No description provided for @select_items.
  ///
  /// In en, this message translates to:
  /// **'Select Items'**
  String get select_items;

  /// No description provided for @selected_items.
  ///
  /// In en, this message translates to:
  /// **'Selected Items'**
  String get selected_items;

  /// No description provided for @no_notifications.
  ///
  /// In en, this message translates to:
  /// **'No notifications available.'**
  String get no_notifications;

  /// No description provided for @notification_settings.
  ///
  /// In en, this message translates to:
  /// **'Notification Settings'**
  String get notification_settings;

  /// No description provided for @notification_settings_updated.
  ///
  /// In en, this message translates to:
  /// **'Notification settings updated successfully.'**
  String get notification_settings_updated;

  /// No description provided for @notification_settings_update_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed to update notification settings.'**
  String get notification_settings_update_failed;

  /// No description provided for @notification_settings_description.
  ///
  /// In en, this message translates to:
  /// **'Manage your notification preferences.'**
  String get notification_settings_description;

  /// No description provided for @notification_settings_email.
  ///
  /// In en, this message translates to:
  /// **'Email Notifications'**
  String get notification_settings_email;

  /// No description provided for @notification_settings_push.
  ///
  /// In en, this message translates to:
  /// **'Push Notifications'**
  String get notification_settings_push;

  /// No description provided for @notification_settings_sms.
  ///
  /// In en, this message translates to:
  /// **'SMS Notifications'**
  String get notification_settings_sms;

  /// No description provided for @notification_settings_in_app.
  ///
  /// In en, this message translates to:
  /// **'In-App Notifications'**
  String get notification_settings_in_app;

  /// No description provided for @notification_settings_push_description.
  ///
  /// In en, this message translates to:
  /// **'Receive notifications on your device.'**
  String get notification_settings_push_description;

  /// No description provided for @notification_settings_sms_description.
  ///
  /// In en, this message translates to:
  /// **'Receive notifications via SMS.'**
  String get notification_settings_sms_description;

  /// No description provided for @notification_settings_in_app_description.
  ///
  /// In en, this message translates to:
  /// **'Receive notifications within the app.'**
  String get notification_settings_in_app_description;

  /// No description provided for @notification_settings_email_description.
  ///
  /// In en, this message translates to:
  /// **'Receive notifications via email.'**
  String get notification_settings_email_description;

  /// No description provided for @notification_settings_push_enabled.
  ///
  /// In en, this message translates to:
  /// **'Push notifications enabled.'**
  String get notification_settings_push_enabled;

  /// No description provided for @notification_settings_push_disabled.
  ///
  /// In en, this message translates to:
  /// **'Push notifications disabled.'**
  String get notification_settings_push_disabled;

  /// No description provided for @notification_settings_sms_enabled.
  ///
  /// In en, this message translates to:
  /// **'SMS notifications enabled.'**
  String get notification_settings_sms_enabled;

  /// No description provided for @notification_settings_sms_disabled.
  ///
  /// In en, this message translates to:
  /// **'SMS notifications disabled.'**
  String get notification_settings_sms_disabled;

  /// No description provided for @notification_settings_email_enabled.
  ///
  /// In en, this message translates to:
  /// **'Email notifications enabled.'**
  String get notification_settings_email_enabled;

  /// No description provided for @notification_settings_email_disabled.
  ///
  /// In en, this message translates to:
  /// **'Email notifications disabled.'**
  String get notification_settings_email_disabled;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @signup.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signup;

  /// No description provided for @forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgot_password;

  /// No description provided for @reset_password.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get reset_password;

  /// No description provided for @send_reset_link.
  ///
  /// In en, this message translates to:
  /// **'Send Reset Link'**
  String get send_reset_link;

  /// No description provided for @password_reset_success.
  ///
  /// In en, this message translates to:
  /// **'Password reset link has been sent to your email.'**
  String get password_reset_success;

  /// No description provided for @password_reset_successful.
  ///
  /// In en, this message translates to:
  /// **'Password has been reset successfully.'**
  String get password_reset_successful;

  /// No description provided for @password_reset_unsuccessful.
  ///
  /// In en, this message translates to:
  /// **'Failed to reset password. Please try again.'**
  String get password_reset_unsuccessful;

  /// No description provided for @password_reset_email_sent.
  ///
  /// In en, this message translates to:
  /// **'Password reset email has been sent.'**
  String get password_reset_email_sent;

  /// No description provided for @password_reset_email_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed to send password reset email.'**
  String get password_reset_email_failed;

  /// No description provided for @password_reset_link_sent.
  ///
  /// In en, this message translates to:
  /// **'Password reset link has been sent to your email.'**
  String get password_reset_link_sent;

  /// No description provided for @password_reset_link_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed to send password reset link.'**
  String get password_reset_link_failed;

  /// No description provided for @password_reset_link_invalid.
  ///
  /// In en, this message translates to:
  /// **'Password reset link is invalid or expired.'**
  String get password_reset_link_invalid;

  /// No description provided for @password_reset_link_successful.
  ///
  /// In en, this message translates to:
  /// **'Password reset link is valid.'**
  String get password_reset_link_successful;

  /// No description provided for @password_reset_link_unsuccessful.
  ///
  /// In en, this message translates to:
  /// **'Failed to validate password reset link.'**
  String get password_reset_link_unsuccessful;

  /// No description provided for @password_reset_link_expired.
  ///
  /// In en, this message translates to:
  /// **'Password reset link has expired.'**
  String get password_reset_link_expired;

  /// No description provided for @password_reset_link_used.
  ///
  /// In en, this message translates to:
  /// **'Password reset link has already been used.'**
  String get password_reset_link_used;

  /// No description provided for @password_reset_link_not_found.
  ///
  /// In en, this message translates to:
  /// **'Password reset link not found.'**
  String get password_reset_link_not_found;

  /// No description provided for @password_reset_link_invalid_token.
  ///
  /// In en, this message translates to:
  /// **'Password reset link has an invalid token.'**
  String get password_reset_link_invalid_token;

  /// No description provided for @password_reset_link_invalid_email.
  ///
  /// In en, this message translates to:
  /// **'Password reset link has an invalid email address.'**
  String get password_reset_link_invalid_email;

  /// No description provided for @password_reset_link_invalid_request.
  ///
  /// In en, this message translates to:
  /// **'Password reset link has an invalid request.'**
  String get password_reset_link_invalid_request;

  /// No description provided for @password_reset_link_invalid_user.
  ///
  /// In en, this message translates to:
  /// **'Password reset link has an invalid user.'**
  String get password_reset_link_invalid_user;

  /// No description provided for @password_reset_link_invalid_code.
  ///
  /// In en, this message translates to:
  /// **'Password reset link has an invalid code.'**
  String get password_reset_link_invalid_code;

  /// No description provided for @password_reset_link_invalid_url.
  ///
  /// In en, this message translates to:
  /// **'Password reset link has an invalid URL.'**
  String get password_reset_link_invalid_url;

  /// No description provided for @password_reset_link_invalid_method.
  ///
  /// In en, this message translates to:
  /// **'Password reset link has an invalid method.'**
  String get password_reset_link_invalid_method;

  /// No description provided for @password_reset_link_invalid_ip.
  ///
  /// In en, this message translates to:
  /// **'Password reset link has an invalid IP address.'**
  String get password_reset_link_invalid_ip;

  /// No description provided for @password_reset_link_invalid_agent.
  ///
  /// In en, this message translates to:
  /// **'Password reset link has an invalid user agent.'**
  String get password_reset_link_invalid_agent;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @orders.
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get orders;

  /// No description provided for @addresses.
  ///
  /// In en, this message translates to:
  /// **'Addresses'**
  String get addresses;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @help_support.
  ///
  /// In en, this message translates to:
  /// **'Help & Support'**
  String get help_support;

  /// No description provided for @privacy_policy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacy_policy;

  /// No description provided for @log_out.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get log_out;

  /// No description provided for @empty_cart.
  ///
  /// In en, this message translates to:
  /// **'Empty Cart'**
  String get empty_cart;

  /// No description provided for @my_orders.
  ///
  /// In en, this message translates to:
  /// **'My Orders'**
  String get my_orders;

  /// No description provided for @forgot_password_question.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get forgot_password_question;

  /// No description provided for @log_in.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get log_in;

  /// No description provided for @dont_have_account.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dont_have_account;

  /// No description provided for @sign_up.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get sign_up;

  /// No description provided for @get_full_template.
  ///
  /// In en, this message translates to:
  /// **'Get the full template'**
  String get get_full_template;

  /// No description provided for @return_to.
  ///
  /// In en, this message translates to:
  /// **'Return'**
  String get return_to;

  /// No description provided for @promotions.
  ///
  /// In en, this message translates to:
  /// **'Promotions'**
  String get promotions;

  /// No description provided for @no_product_found.
  ///
  /// In en, this message translates to:
  /// **'Oops, No Product found!!'**
  String get no_product_found;

  /// No description provided for @empty_state.
  ///
  /// In en, this message translates to:
  /// **'No items found'**
  String get empty_state;

  /// No description provided for @size.
  ///
  /// In en, this message translates to:
  /// **'Size'**
  String get size;

  /// No description provided for @bust.
  ///
  /// In en, this message translates to:
  /// **'Bust'**
  String get bust;

  /// No description provided for @waist.
  ///
  /// In en, this message translates to:
  /// **'Waist'**
  String get waist;

  /// No description provided for @hips.
  ///
  /// In en, this message translates to:
  /// **'Hips'**
  String get hips;

  /// No description provided for @continue_shopping.
  ///
  /// In en, this message translates to:
  /// **'Continue Shopping'**
  String get continue_shopping;

  /// No description provided for @checkout.
  ///
  /// In en, this message translates to:
  /// **'Checkout'**
  String get checkout;

  /// No description provided for @shipping_methods.
  ///
  /// In en, this message translates to:
  /// **'Shipping Methods'**
  String get shipping_methods;

  /// No description provided for @choose_shipping_method.
  ///
  /// In en, this message translates to:
  /// **'Choose a shipping method'**
  String get choose_shipping_method;

  /// No description provided for @no_shipping_methods.
  ///
  /// In en, this message translates to:
  /// **'No shipping methods available!!'**
  String get no_shipping_methods;

  /// No description provided for @review_your_order.
  ///
  /// In en, this message translates to:
  /// **'Review Your Order'**
  String get review_your_order;

  /// No description provided for @delivery_date.
  ///
  /// In en, this message translates to:
  /// **'Delivery Date'**
  String get delivery_date;

  /// No description provided for @create_new_address.
  ///
  /// In en, this message translates to:
  /// **'Create New Address'**
  String get create_new_address;

  /// No description provided for @update_address.
  ///
  /// In en, this message translates to:
  /// **'Update Address'**
  String get update_address;

  /// No description provided for @prestige.
  ///
  /// In en, this message translates to:
  /// **'PRESTIGE'**
  String get prestige;

  /// No description provided for @want_to_change_password.
  ///
  /// In en, this message translates to:
  /// **'Want To Change Password ?'**
  String get want_to_change_password;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @return_to_login.
  ///
  /// In en, this message translates to:
  /// **'return to'**
  String get return_to_login;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @upload_official_paper.
  ///
  /// In en, this message translates to:
  /// **'Upload your Official Paper here'**
  String get upload_official_paper;

  /// No description provided for @do_you_have_account.
  ///
  /// In en, this message translates to:
  /// **'Do you have an account?'**
  String get do_you_have_account;

  /// No description provided for @log_in_small.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get log_in_small;

  /// No description provided for @settings_button.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings_button;

  /// No description provided for @order.
  ///
  /// In en, this message translates to:
  /// **'Order'**
  String get order;

  /// No description provided for @based_on_reviews.
  ///
  /// In en, this message translates to:
  /// **'Based on {count} Reviews'**
  String based_on_reviews(Object count);

  /// No description provided for @get_full_code.
  ///
  /// In en, this message translates to:
  /// **'Get full code'**
  String get get_full_code;

  /// No description provided for @product_details.
  ///
  /// In en, this message translates to:
  /// **'Product Details'**
  String get product_details;

  /// No description provided for @variations.
  ///
  /// In en, this message translates to:
  /// **'Variations'**
  String get variations;

  /// No description provided for @you_may_also_like.
  ///
  /// In en, this message translates to:
  /// **'You may also like'**
  String get you_may_also_like;

  /// No description provided for @product_added_to_cart.
  ///
  /// In en, this message translates to:
  /// **'Product added to cart'**
  String get product_added_to_cart;

  /// No description provided for @added_quantity_to_cart.
  ///
  /// In en, this message translates to:
  /// **'Added {quantity} {unit} to cart'**
  String added_quantity_to_cart(Object quantity, Object unit);

  /// No description provided for @failed_to_add_to_cart.
  ///
  /// In en, this message translates to:
  /// **'Failed to add to cart'**
  String get failed_to_add_to_cart;

  /// No description provided for @please_select_variation.
  ///
  /// In en, this message translates to:
  /// **'Please select a variation'**
  String get please_select_variation;

  /// No description provided for @pormotions.
  ///
  /// In en, this message translates to:
  /// **'Promotions'**
  String get pormotions;

  /// No description provided for @buy_x_get_y.
  ///
  /// In en, this message translates to:
  /// **'Buy {x} And Get {y} {product}'**
  String buy_x_get_y(Object product, Object x, Object y);

  /// No description provided for @min_amount.
  ///
  /// In en, this message translates to:
  /// **'Min Amount'**
  String get min_amount;

  /// No description provided for @min_items.
  ///
  /// In en, this message translates to:
  /// **'Min Items: {items}'**
  String min_items(Object items);

  /// No description provided for @payment_summary.
  ///
  /// In en, this message translates to:
  /// **'Payment Summary'**
  String get payment_summary;

  /// No description provided for @sub_total.
  ///
  /// In en, this message translates to:
  /// **'Sub Total'**
  String get sub_total;

  /// No description provided for @discount.
  ///
  /// In en, this message translates to:
  /// **'Discount'**
  String get discount;

  /// No description provided for @delivery_fee.
  ///
  /// In en, this message translates to:
  /// **'Delivery Fee'**
  String get delivery_fee;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @place_order.
  ///
  /// In en, this message translates to:
  /// **'Place Order'**
  String get place_order;

  /// No description provided for @enter_coupon_code.
  ///
  /// In en, this message translates to:
  /// **'Enter your coupon code'**
  String get enter_coupon_code;

  /// No description provided for @buy.
  ///
  /// In en, this message translates to:
  /// **'Buy'**
  String get buy;

  /// No description provided for @shipping_information.
  ///
  /// In en, this message translates to:
  /// **'Shipping Information'**
  String get shipping_information;

  /// No description provided for @returns.
  ///
  /// In en, this message translates to:
  /// **'Returns'**
  String get returns;

  /// No description provided for @reviews.
  ///
  /// In en, this message translates to:
  /// **'Reviews'**
  String get reviews;

  /// No description provided for @promotion_title.
  ///
  /// In en, this message translates to:
  /// **'Promotion Title'**
  String get promotion_title;

  /// No description provided for @promotion_description.
  ///
  /// In en, this message translates to:
  /// **'Promotion Description'**
  String get promotion_description;

  /// No description provided for @end_date.
  ///
  /// In en, this message translates to:
  /// **'End Date'**
  String get end_date;

  /// No description provided for @prestige_brand.
  ///
  /// In en, this message translates to:
  /// **'PRESTIGE'**
  String get prestige_brand;

  /// No description provided for @quantity.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get quantity;

  /// No description provided for @welcome_back.
  ///
  /// In en, this message translates to:
  /// **'Welcome back!'**
  String get welcome_back;

  /// No description provided for @login_description.
  ///
  /// In en, this message translates to:
  /// **'Log in with your data that you entered during your registration.'**
  String get login_description;

  /// No description provided for @lets_get_started.
  ///
  /// In en, this message translates to:
  /// **'Let\'s get started!'**
  String get lets_get_started;

  /// No description provided for @signup_description.
  ///
  /// In en, this message translates to:
  /// **'Please enter your valid data in order to create an account.'**
  String get signup_description;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @email_address.
  ///
  /// In en, this message translates to:
  /// **'Email address'**
  String get email_address;

  /// No description provided for @company_name.
  ///
  /// In en, this message translates to:
  /// **'Company Name'**
  String get company_name;

  /// No description provided for @group_type.
  ///
  /// In en, this message translates to:
  /// **'Group (Wholesale, Merchant, Retails, Van Sales ...)'**
  String get group_type;

  /// No description provided for @required.
  ///
  /// In en, this message translates to:
  /// **'required'**
  String get required;

  /// No description provided for @password_no_match.
  ///
  /// In en, this message translates to:
  /// **'Password doesn\'t match'**
  String get password_no_match;

  /// No description provided for @confirm_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirm_password;

  /// No description provided for @vat_number.
  ///
  /// In en, this message translates to:
  /// **'VAT Number'**
  String get vat_number;

  /// No description provided for @phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phone_number;

  /// No description provided for @postal_code.
  ///
  /// In en, this message translates to:
  /// **'Postal Code'**
  String get postal_code;

  /// No description provided for @select_country.
  ///
  /// In en, this message translates to:
  /// **'Select Country'**
  String get select_country;

  /// No description provided for @select_city.
  ///
  /// In en, this message translates to:
  /// **'Select City'**
  String get select_city;

  /// No description provided for @full_address.
  ///
  /// In en, this message translates to:
  /// **'Full address'**
  String get full_address;

  /// No description provided for @change_password.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get change_password;

  /// No description provided for @remove_account_confirmation.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to remove your account ?'**
  String get remove_account_confirmation;

  /// No description provided for @unit_price.
  ///
  /// In en, this message translates to:
  /// **'Unit price'**
  String get unit_price;

  /// No description provided for @unit_piece.
  ///
  /// In en, this message translates to:
  /// **'Piece'**
  String get unit_piece;

  /// No description provided for @unit_bag.
  ///
  /// In en, this message translates to:
  /// **'Bag'**
  String get unit_bag;

  /// No description provided for @no_shipping_methods_available.
  ///
  /// In en, this message translates to:
  /// **'No shipping methods available!!'**
  String get no_shipping_methods_available;

  /// No description provided for @settings_label.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings_label;

  /// No description provided for @location_services_off.
  ///
  /// In en, this message translates to:
  /// **'Your Location Services are turned off.'**
  String get location_services_off;

  /// No description provided for @location_services_description.
  ///
  /// In en, this message translates to:
  /// **'Turn on Location Services in your device Settings to search for stores by current location. You can still search by Country/Region, City or Zip Code.'**
  String get location_services_description;

  /// No description provided for @return1.
  ///
  /// In en, this message translates to:
  /// **'Return'**
  String get return1;

  /// No description provided for @returns_description.
  ///
  /// In en, this message translates to:
  /// **'Free pre-paid returns and exchanges for orders shipped to the US. Get refunded faster with easy online returns and print a FREE pre-paid return SmartLabel@ online! Return or exchange any unused or defective merchandise by mail or at one of our US or Canada store locations. Made to order items cannot be canceled, exchange or returned.'**
  String get returns_description;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'status'**
  String get status;

  /// No description provided for @jod.
  ///
  /// In en, this message translates to:
  /// **'JOD'**
  String get jod;

  /// No description provided for @mustafa.
  ///
  /// In en, this message translates to:
  /// **'Mustafa'**
  String get mustafa;

  /// No description provided for @home_nav.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home_nav;

  /// No description provided for @shop_nav.
  ///
  /// In en, this message translates to:
  /// **'Shop'**
  String get shop_nav;

  /// No description provided for @cart_nav.
  ///
  /// In en, this message translates to:
  /// **'Cart'**
  String get cart_nav;

  /// No description provided for @promotions_nav.
  ///
  /// In en, this message translates to:
  /// **'Promotions'**
  String get promotions_nav;

  /// No description provided for @profile_nav.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile_nav;

  /// No description provided for @enter_valid_email.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email address'**
  String get enter_valid_email;

  /// No description provided for @passwords_no_match.
  ///
  /// In en, this message translates to:
  /// **'passwords do not match'**
  String get passwords_no_match;

  /// No description provided for @loading_text.
  ///
  /// In en, this message translates to:
  /// **'Loading'**
  String get loading_text;

  /// No description provided for @end_at.
  ///
  /// In en, this message translates to:
  /// **'End at'**
  String get end_at;

  /// No description provided for @buy_and_get.
  ///
  /// In en, this message translates to:
  /// **'Buy {buyQuantity} {buyProduct} and get {getProduct}'**
  String buy_and_get(Object buyProduct, Object buyQuantity, Object getProduct);

  /// No description provided for @size_s.
  ///
  /// In en, this message translates to:
  /// **'S'**
  String get size_s;

  /// No description provided for @size_m.
  ///
  /// In en, this message translates to:
  /// **'M'**
  String get size_m;

  /// No description provided for @size_l.
  ///
  /// In en, this message translates to:
  /// **'L'**
  String get size_l;

  /// No description provided for @size_xl.
  ///
  /// In en, this message translates to:
  /// **'XL'**
  String get size_xl;

  /// No description provided for @privacy_policy_title.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacy_policy_title;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get more;

  /// No description provided for @first_name.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get first_name;

  /// No description provided for @last_name.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get last_name;

  /// No description provided for @new_password.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get new_password;

  /// No description provided for @old_password.
  ///
  /// In en, this message translates to:
  /// **'Old Password'**
  String get old_password;

  /// No description provided for @subject.
  ///
  /// In en, this message translates to:
  /// **'Subject'**
  String get subject;

  /// No description provided for @message.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get message;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get gallery;

  /// No description provided for @camera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get camera;

  /// No description provided for @video.
  ///
  /// In en, this message translates to:
  /// **'Video'**
  String get video;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get time;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// No description provided for @payment.
  ///
  /// In en, this message translates to:
  /// **'Payment'**
  String get payment;

  /// No description provided for @payment_method.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get payment_method;

  /// No description provided for @about_us.
  ///
  /// In en, this message translates to:
  /// **'About Us'**
  String get about_us;

  /// No description provided for @contact_us.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get contact_us;

  /// No description provided for @faq.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq;

  /// No description provided for @terms_and_conditions.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get terms_and_conditions;

  /// No description provided for @rate_app.
  ///
  /// In en, this message translates to:
  /// **'Rate App'**
  String get rate_app;

  /// No description provided for @my_profile.
  ///
  /// In en, this message translates to:
  /// **'My Profile'**
  String get my_profile;

  /// No description provided for @wallet.
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get wallet;

  /// No description provided for @welcome_to_app.
  ///
  /// In en, this message translates to:
  /// **'Welcome to our app'**
  String get welcome_to_app;

  /// No description provided for @get_started.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get get_started;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'or'**
  String get or;

  /// No description provided for @current.
  ///
  /// In en, this message translates to:
  /// **'Current'**
  String get current;

  /// No description provided for @the_completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get the_completed;

  /// No description provided for @the_cancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get the_cancelled;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// No description provided for @individual.
  ///
  /// In en, this message translates to:
  /// **'Individual'**
  String get individual;

  /// No description provided for @company.
  ///
  /// In en, this message translates to:
  /// **'Company'**
  String get company;

  /// No description provided for @select_image_source.
  ///
  /// In en, this message translates to:
  /// **'Select Image Source'**
  String get select_image_source;

  /// No description provided for @join_our_world.
  ///
  /// In en, this message translates to:
  /// **'Join Our World'**
  String get join_our_world;

  /// No description provided for @app_language.
  ///
  /// In en, this message translates to:
  /// **'App Language'**
  String get app_language;

  /// No description provided for @my_addresses.
  ///
  /// In en, this message translates to:
  /// **'My Addresses'**
  String get my_addresses;

  /// No description provided for @favorite.
  ///
  /// In en, this message translates to:
  /// **'Favorite'**
  String get favorite;

  /// No description provided for @services.
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get services;

  /// No description provided for @rates.
  ///
  /// In en, this message translates to:
  /// **'Rates'**
  String get rates;

  /// No description provided for @available.
  ///
  /// In en, this message translates to:
  /// **'Available'**
  String get available;

  /// No description provided for @unavailable.
  ///
  /// In en, this message translates to:
  /// **'Unavailable'**
  String get unavailable;

  /// No description provided for @good_morning.
  ///
  /// In en, this message translates to:
  /// **'Good Morning'**
  String get good_morning;

  /// No description provided for @new_orders.
  ///
  /// In en, this message translates to:
  /// **'New Orders'**
  String get new_orders;

  /// No description provided for @confirm_delete.
  ///
  /// In en, this message translates to:
  /// **'Confirm Delete'**
  String get confirm_delete;

  /// No description provided for @passport.
  ///
  /// In en, this message translates to:
  /// **'Passport'**
  String get passport;

  /// No description provided for @national_id.
  ///
  /// In en, this message translates to:
  /// **'National ID'**
  String get national_id;

  /// No description provided for @my_files.
  ///
  /// In en, this message translates to:
  /// **'My Files'**
  String get my_files;

  /// No description provided for @select_action.
  ///
  /// In en, this message translates to:
  /// **'Select Action'**
  String get select_action;

  /// No description provided for @other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// No description provided for @lets_start.
  ///
  /// In en, this message translates to:
  /// **'Let\'s Start'**
  String get lets_start;

  /// No description provided for @login_as_visitor.
  ///
  /// In en, this message translates to:
  /// **'Login as Visitor'**
  String get login_as_visitor;

  /// No description provided for @get_the_full_template.
  ///
  /// In en, this message translates to:
  /// **'Get the full template'**
  String get get_the_full_template;

  /// No description provided for @link_copied.
  ///
  /// In en, this message translates to:
  /// **'Link Copied'**
  String get link_copied;

  /// No description provided for @copy_link.
  ///
  /// In en, this message translates to:
  /// **'Copy link'**
  String get copy_link;

  /// No description provided for @full_name.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get full_name;

  /// No description provided for @shop_now.
  ///
  /// In en, this message translates to:
  /// **'Shop Now'**
  String get shop_now;

  /// No description provided for @not_found_route.
  ///
  /// In en, this message translates to:
  /// **'Not found route'**
  String get not_found_route;

  /// No description provided for @buy_now.
  ///
  /// In en, this message translates to:
  /// **'Buy now'**
  String get buy_now;

  /// No description provided for @add_to_cart.
  ///
  /// In en, this message translates to:
  /// **'Add to cart'**
  String get add_to_cart;

  /// No description provided for @total_price.
  ///
  /// In en, this message translates to:
  /// **'Total price'**
  String get total_price;

  /// No description provided for @cvv.
  ///
  /// In en, this message translates to:
  /// **'CVV'**
  String get cvv;

  /// No description provided for @ordered.
  ///
  /// In en, this message translates to:
  /// **'Ordered'**
  String get ordered;

  /// No description provided for @processing.
  ///
  /// In en, this message translates to:
  /// **'Processing'**
  String get processing;

  /// No description provided for @packed.
  ///
  /// In en, this message translates to:
  /// **'Packed'**
  String get packed;

  /// No description provided for @shipped.
  ///
  /// In en, this message translates to:
  /// **'Shipped'**
  String get shipped;

  /// No description provided for @canceled.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get canceled;

  /// No description provided for @delivered.
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get delivered;

  /// No description provided for @whatsapp_not_installed.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp not installed'**
  String get whatsapp_not_installed;

  /// No description provided for @install_whatsapp_first.
  ///
  /// In en, this message translates to:
  /// **'Install WhatsApp First Please'**
  String get install_whatsapp_first;

  /// No description provided for @billing_address.
  ///
  /// In en, this message translates to:
  /// **'Billing address'**
  String get billing_address;

  /// No description provided for @shipping_address.
  ///
  /// In en, this message translates to:
  /// **'Shipping address'**
  String get shipping_address;

  /// No description provided for @select_address_option.
  ///
  /// In en, this message translates to:
  /// **'Please select at least one address option'**
  String get select_address_option;

  /// No description provided for @create_new_address_button.
  ///
  /// In en, this message translates to:
  /// **'Create new address'**
  String get create_new_address_button;

  /// No description provided for @upload_commercial_register.
  ///
  /// In en, this message translates to:
  /// **'Upload your Commercial Register here'**
  String get upload_commercial_register;

  /// No description provided for @unexpected_error.
  ///
  /// In en, this message translates to:
  /// **'Unexpected error occurred'**
  String get unexpected_error;

  /// No description provided for @unable_to_process.
  ///
  /// In en, this message translates to:
  /// **'Unable to process the data'**
  String get unable_to_process;

  /// No description provided for @commercial_register.
  ///
  /// In en, this message translates to:
  /// **'Commercial Register'**
  String get commercial_register;

  /// No description provided for @no_payment_methods_available.
  ///
  /// In en, this message translates to:
  /// **'No payment methods available!!'**
  String get no_payment_methods_available;

  /// No description provided for @error_loading_cart.
  ///
  /// In en, this message translates to:
  /// **'Error loading cart'**
  String get error_loading_cart;

  /// No description provided for @your_cart_is_empty.
  ///
  /// In en, this message translates to:
  /// **'Your cart is empty'**
  String get your_cart_is_empty;

  /// No description provided for @add_products_before_checkout.
  ///
  /// In en, this message translates to:
  /// **'Add some products to your cart before checkout'**
  String get add_products_before_checkout;

  /// No description provided for @review_the_products.
  ///
  /// In en, this message translates to:
  /// **'Review the products'**
  String get review_the_products;

  /// No description provided for @please_select_shipping_method.
  ///
  /// In en, this message translates to:
  /// **'Please select shipping method'**
  String get please_select_shipping_method;

  /// No description provided for @please_select_payment_method.
  ///
  /// In en, this message translates to:
  /// **'Please select payment method'**
  String get please_select_payment_method;

  /// No description provided for @please_select_delivery_date.
  ///
  /// In en, this message translates to:
  /// **'Please select delivery date'**
  String get please_select_delivery_date;

  /// No description provided for @payment_confirmation.
  ///
  /// In en, this message translates to:
  /// **'Payment Confirmation'**
  String get payment_confirmation;

  /// No description provided for @payment_redirect_message.
  ///
  /// In en, this message translates to:
  /// **'You will be redirected to PayTabs to complete your payment. If you cancel the payment, your order will still be created and you can pay later.'**
  String get payment_redirect_message;

  /// No description provided for @proceed_to_payment.
  ///
  /// In en, this message translates to:
  /// **'Proceed to Payment'**
  String get proceed_to_payment;

  /// No description provided for @office.
  ///
  /// In en, this message translates to:
  /// **'Office'**
  String get office;

  /// No description provided for @change_address.
  ///
  /// In en, this message translates to:
  /// **'Change Address'**
  String get change_address;

  /// No description provided for @default_billing_shipping.
  ///
  /// In en, this message translates to:
  /// **'Default Billing & Shipping'**
  String get default_billing_shipping;

  /// No description provided for @default_shipping_address.
  ///
  /// In en, this message translates to:
  /// **'Default Shipping Address'**
  String get default_shipping_address;

  /// No description provided for @default_billing_address.
  ///
  /// In en, this message translates to:
  /// **'Default Billing Address'**
  String get default_billing_address;

  /// No description provided for @credit_debit_card.
  ///
  /// In en, this message translates to:
  /// **'Credit/Debit Card'**
  String get credit_debit_card;

  /// No description provided for @credit_debit_card_description.
  ///
  /// In en, this message translates to:
  /// **'Pay securely with your credit or debit card'**
  String get credit_debit_card_description;

  /// No description provided for @cash_on_delivery.
  ///
  /// In en, this message translates to:
  /// **'Cash on Delivery'**
  String get cash_on_delivery;

  /// No description provided for @cash_on_delivery_description.
  ///
  /// In en, this message translates to:
  /// **'Pay when you receive your order'**
  String get cash_on_delivery_description;

  /// No description provided for @credit.
  ///
  /// In en, this message translates to:
  /// **'Credit'**
  String get credit;

  /// No description provided for @credit_description.
  ///
  /// In en, this message translates to:
  /// **'Pay using your available credit balance'**
  String get credit_description;

  /// No description provided for @credit_payment_confirmation.
  ///
  /// In en, this message translates to:
  /// **'You will proceed with credit payment. The amount will be deducted from your credit balance.'**
  String get credit_payment_confirmation;

  /// No description provided for @confirm_credit_payment.
  ///
  /// In en, this message translates to:
  /// **'Confirm Credit Payment'**
  String get confirm_credit_payment;

  /// No description provided for @company_name_optional.
  ///
  /// In en, this message translates to:
  /// **'Company Name (Optional)'**
  String get company_name_optional;

  /// No description provided for @group_type_optional.
  ///
  /// In en, this message translates to:
  /// **'Group (Wholesale, Merchant, Retails, Van Sales ...) - Optional'**
  String get group_type_optional;

  /// No description provided for @vat_number_optional.
  ///
  /// In en, this message translates to:
  /// **'VAT Number (Optional)'**
  String get vat_number_optional;

  /// No description provided for @phone_number_optional.
  ///
  /// In en, this message translates to:
  /// **'Phone Number (Optional)'**
  String get phone_number_optional;

  /// No description provided for @postal_code_optional.
  ///
  /// In en, this message translates to:
  /// **'Postal Code (Optional)'**
  String get postal_code_optional;

  /// No description provided for @select_country_optional.
  ///
  /// In en, this message translates to:
  /// **'Select Country (Optional)'**
  String get select_country_optional;

  /// No description provided for @select_city_optional.
  ///
  /// In en, this message translates to:
  /// **'Select City (Optional)'**
  String get select_city_optional;

  /// No description provided for @full_address_optional.
  ///
  /// In en, this message translates to:
  /// **'Full address (Optional)'**
  String get full_address_optional;

  /// No description provided for @lost_password_title.
  ///
  /// In en, this message translates to:
  /// **'Lost your password?'**
  String get lost_password_title;

  /// No description provided for @lost_password_description.
  ///
  /// In en, this message translates to:
  /// **'Please enter your valid data in order to restore your account.'**
  String get lost_password_description;

  /// No description provided for @enter_otp.
  ///
  /// In en, this message translates to:
  /// **'Enter OTP'**
  String get enter_otp;

  /// No description provided for @egypt.
  ///
  /// In en, this message translates to:
  /// **'Egypt'**
  String get egypt;

  /// No description provided for @deals.
  ///
  /// In en, this message translates to:
  /// **'Deals'**
  String get deals;

  /// No description provided for @featured_products.
  ///
  /// In en, this message translates to:
  /// **'Featured Products'**
  String get featured_products;

  /// No description provided for @categories.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categories;

  /// No description provided for @product_info.
  ///
  /// In en, this message translates to:
  /// **'Product info'**
  String get product_info;

  /// No description provided for @jordan_phone_validation.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid Jordan phone number (9 digits)'**
  String get jordan_phone_validation;

  /// No description provided for @jordan_phone_start_7.
  ///
  /// In en, this message translates to:
  /// **'Jordan phone numbers should start with 7'**
  String get jordan_phone_start_7;

  /// No description provided for @please_select_country.
  ///
  /// In en, this message translates to:
  /// **'Please select a country'**
  String get please_select_country;

  /// No description provided for @please_select_city.
  ///
  /// In en, this message translates to:
  /// **'Please select a city'**
  String get please_select_city;

  /// No description provided for @please_select_country_first.
  ///
  /// In en, this message translates to:
  /// **'Please select a country first'**
  String get please_select_country_first;

  /// No description provided for @load_more_countries.
  ///
  /// In en, this message translates to:
  /// **'Load More Countries'**
  String get load_more_countries;

  /// No description provided for @load_more_cities.
  ///
  /// In en, this message translates to:
  /// **'Load More Cities'**
  String get load_more_cities;

  /// No description provided for @passwords_match.
  ///
  /// In en, this message translates to:
  /// **'Passwords match'**
  String get passwords_match;

  /// No description provided for @basic_info.
  ///
  /// In en, this message translates to:
  /// **'Basic Info'**
  String get basic_info;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @previous.
  ///
  /// In en, this message translates to:
  /// **'Previous'**
  String get previous;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @verify_account.
  ///
  /// In en, this message translates to:
  /// **'Verify Account'**
  String get verify_account;

  /// No description provided for @verify_account_description.
  ///
  /// In en, this message translates to:
  /// **'Please enter the OTP sent to your phone number to verify your account.'**
  String get verify_account_description;

  /// No description provided for @otp_verified_successfully.
  ///
  /// In en, this message translates to:
  /// **'OTP verified successfully! You can now login.'**
  String get otp_verified_successfully;

  /// No description provided for @otp_sent_to_phone.
  ///
  /// In en, this message translates to:
  /// **'OTP sent to {phone}'**
  String otp_sent_to_phone(Object phone);

  /// No description provided for @phone_number_not_provided.
  ///
  /// In en, this message translates to:
  /// **'Phone number not provided. Please try again.'**
  String get phone_number_not_provided;

  /// No description provided for @products.
  ///
  /// In en, this message translates to:
  /// **'Products'**
  String get products;

  /// No description provided for @load_more.
  ///
  /// In en, this message translates to:
  /// **'Load More'**
  String get load_more;

  /// No description provided for @must_have_address_to_checkout.
  ///
  /// In en, this message translates to:
  /// **'You must have an address to checkout. Please create an address first.'**
  String get must_have_address_to_checkout;

  /// No description provided for @invalid_otp.
  ///
  /// In en, this message translates to:
  /// **'Invalid OTP'**
  String get invalid_otp;
}

class _SDelegate extends LocalizationsDelegate<S> {
  const _SDelegate();

  @override
  Future<S> load(Locale locale) {
    return SynchronousFuture<S>(lookupS(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_SDelegate old) => false;
}

S lookupS(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return SAr();
    case 'en':
      return SEn();
  }

  throw FlutterError(
      'S.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}

// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `Profile`
  String get profile {
    return Intl.message('Profile', name: 'profile', desc: '', args: []);
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  /// `Welcome to our application!`
  String get welcome {
    return Intl.message(
      'Welcome to our application!',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred. Please try again.`
  String get error {
    return Intl.message(
      'An error occurred. Please try again.',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Loading...`
  String get loading {
    return Intl.message('Loading...', name: 'loading', desc: '', args: []);
  }

  /// `Search`
  String get search {
    return Intl.message('Search', name: 'search', desc: '', args: []);
  }

  /// `No results found.`
  String get no_results {
    return Intl.message(
      'No results found.',
      name: 'no_results',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message('Retry', name: 'retry', desc: '', args: []);
  }

  /// `Save`
  String get save {
    return Intl.message('Save', name: 'save', desc: '', args: []);
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Delete`
  String get delete {
    return Intl.message('Delete', name: 'delete', desc: '', args: []);
  }

  /// `Edit`
  String get edit {
    return Intl.message('Edit', name: 'edit', desc: '', args: []);
  }

  /// `Update`
  String get update {
    return Intl.message('Update', name: 'update', desc: '', args: []);
  }

  /// `Add`
  String get add {
    return Intl.message('Add', name: 'add', desc: '', args: []);
  }

  /// `Remove`
  String get remove {
    return Intl.message('Remove', name: 'remove', desc: '', args: []);
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Yes`
  String get yes {
    return Intl.message('Yes', name: 'yes', desc: '', args: []);
  }

  /// `No`
  String get no {
    return Intl.message('No', name: 'no', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Username`
  String get username {
    return Intl.message('Username', name: 'username', desc: '', args: []);
  }

  /// `Phone`
  String get phone {
    return Intl.message('Phone', name: 'phone', desc: '', args: []);
  }

  /// `Address`
  String get address {
    return Intl.message('Address', name: 'address', desc: '', args: []);
  }

  /// `Address name`
  String get address_name {
    return Intl.message(
      'Address name',
      name: 'address_name',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address_line {
    return Intl.message('Address', name: 'address_line', desc: '', args: []);
  }

  /// `City`
  String get city {
    return Intl.message('City', name: 'city', desc: '', args: []);
  }

  /// `State`
  String get state {
    return Intl.message('State', name: 'state', desc: '', args: []);
  }

  /// `Zip Code`
  String get zip {
    return Intl.message('Zip Code', name: 'zip', desc: '', args: []);
  }

  /// `Country`
  String get country {
    return Intl.message('Country', name: 'country', desc: '', args: []);
  }

  /// `Profile updated successfully.`
  String get profile_updated {
    return Intl.message(
      'Profile updated successfully.',
      name: 'profile_updated',
      desc: '',
      args: [],
    );
  }

  /// `Failed to update profile.`
  String get profile_update_failed {
    return Intl.message(
      'Failed to update profile.',
      name: 'profile_update_failed',
      desc: '',
      args: [],
    );
  }

  /// `Password reset link sent to your email.`
  String get password_reset {
    return Intl.message(
      'Password reset link sent to your email.',
      name: 'password_reset',
      desc: '',
      args: [],
    );
  }

  /// `Failed to send password reset link.`
  String get password_reset_failed {
    return Intl.message(
      'Failed to send password reset link.',
      name: 'password_reset_failed',
      desc: '',
      args: [],
    );
  }

  /// `Password changed successfully.`
  String get password_changed {
    return Intl.message(
      'Password changed successfully.',
      name: 'password_changed',
      desc: '',
      args: [],
    );
  }

  /// `Failed to change password.`
  String get password_change_failed {
    return Intl.message(
      'Failed to change password.',
      name: 'password_change_failed',
      desc: '',
      args: [],
    );
  }

  /// `Email verified successfully.`
  String get email_verified {
    return Intl.message(
      'Email verified successfully.',
      name: 'email_verified',
      desc: '',
      args: [],
    );
  }

  /// `Failed to verify email.`
  String get email_verification_failed {
    return Intl.message(
      'Failed to verify email.',
      name: 'email_verification_failed',
      desc: '',
      args: [],
    );
  }

  /// `Account created successfully.`
  String get account_created {
    return Intl.message(
      'Account created successfully.',
      name: 'account_created',
      desc: '',
      args: [],
    );
  }

  /// `Failed to create account.`
  String get account_creation_failed {
    return Intl.message(
      'Failed to create account.',
      name: 'account_creation_failed',
      desc: '',
      args: [],
    );
  }

  /// `Account deleted successfully.`
  String get account_deleted {
    return Intl.message(
      'Account deleted successfully.',
      name: 'account_deleted',
      desc: '',
      args: [],
    );
  }

  /// `Failed to delete account.`
  String get account_deletion_failed {
    return Intl.message(
      'Failed to delete account.',
      name: 'account_deletion_failed',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `View All`
  String get view_all {
    return Intl.message('View All', name: 'view_all', desc: '', args: []);
  }

  /// `Mark as Read`
  String get mark_as_read {
    return Intl.message(
      'Mark as Read',
      name: 'mark_as_read',
      desc: '',
      args: [],
    );
  }

  /// `Mark as Unread`
  String get mark_as_unread {
    return Intl.message(
      'Mark as Unread',
      name: 'mark_as_unread',
      desc: '',
      args: [],
    );
  }

  /// `Mark All as Read`
  String get mark_all_as_read {
    return Intl.message(
      'Mark All as Read',
      name: 'mark_all_as_read',
      desc: '',
      args: [],
    );
  }

  /// `Mark All as Unread`
  String get mark_all_as_unread {
    return Intl.message(
      'Mark All as Unread',
      name: 'mark_all_as_unread',
      desc: '',
      args: [],
    );
  }

  /// `Delete All`
  String get delete_all {
    return Intl.message('Delete All', name: 'delete_all', desc: '', args: []);
  }

  /// `Delete Selected`
  String get delete_selected {
    return Intl.message(
      'Delete Selected',
      name: 'delete_selected',
      desc: '',
      args: [],
    );
  }

  /// `Select All`
  String get select_all {
    return Intl.message('Select All', name: 'select_all', desc: '', args: []);
  }

  /// `Select None`
  String get select_none {
    return Intl.message('Select None', name: 'select_none', desc: '', args: []);
  }

  /// `Select Invert`
  String get select_invert {
    return Intl.message(
      'Select Invert',
      name: 'select_invert',
      desc: '',
      args: [],
    );
  }

  /// `Select`
  String get select {
    return Intl.message('Select', name: 'select', desc: '', args: []);
  }

  /// `Unselect`
  String get unselect {
    return Intl.message('Unselect', name: 'unselect', desc: '', args: []);
  }

  /// `Select Items`
  String get select_items {
    return Intl.message(
      'Select Items',
      name: 'select_items',
      desc: '',
      args: [],
    );
  }

  /// `Selected Items`
  String get selected_items {
    return Intl.message(
      'Selected Items',
      name: 'selected_items',
      desc: '',
      args: [],
    );
  }

  /// `No notifications available.`
  String get no_notifications {
    return Intl.message(
      'No notifications available.',
      name: 'no_notifications',
      desc: '',
      args: [],
    );
  }

  /// `Notification Settings`
  String get notification_settings {
    return Intl.message(
      'Notification Settings',
      name: 'notification_settings',
      desc: '',
      args: [],
    );
  }

  /// `Notification settings updated successfully.`
  String get notification_settings_updated {
    return Intl.message(
      'Notification settings updated successfully.',
      name: 'notification_settings_updated',
      desc: '',
      args: [],
    );
  }

  /// `Failed to update notification settings.`
  String get notification_settings_update_failed {
    return Intl.message(
      'Failed to update notification settings.',
      name: 'notification_settings_update_failed',
      desc: '',
      args: [],
    );
  }

  /// `Manage your notification preferences.`
  String get notification_settings_description {
    return Intl.message(
      'Manage your notification preferences.',
      name: 'notification_settings_description',
      desc: '',
      args: [],
    );
  }

  /// `Email Notifications`
  String get notification_settings_email {
    return Intl.message(
      'Email Notifications',
      name: 'notification_settings_email',
      desc: '',
      args: [],
    );
  }

  /// `Push Notifications`
  String get notification_settings_push {
    return Intl.message(
      'Push Notifications',
      name: 'notification_settings_push',
      desc: '',
      args: [],
    );
  }

  /// `SMS Notifications`
  String get notification_settings_sms {
    return Intl.message(
      'SMS Notifications',
      name: 'notification_settings_sms',
      desc: '',
      args: [],
    );
  }

  /// `In-App Notifications`
  String get notification_settings_in_app {
    return Intl.message(
      'In-App Notifications',
      name: 'notification_settings_in_app',
      desc: '',
      args: [],
    );
  }

  /// `Receive notifications on your device.`
  String get notification_settings_push_description {
    return Intl.message(
      'Receive notifications on your device.',
      name: 'notification_settings_push_description',
      desc: '',
      args: [],
    );
  }

  /// `Receive notifications via SMS.`
  String get notification_settings_sms_description {
    return Intl.message(
      'Receive notifications via SMS.',
      name: 'notification_settings_sms_description',
      desc: '',
      args: [],
    );
  }

  /// `Receive notifications within the app.`
  String get notification_settings_in_app_description {
    return Intl.message(
      'Receive notifications within the app.',
      name: 'notification_settings_in_app_description',
      desc: '',
      args: [],
    );
  }

  /// `Receive notifications via email.`
  String get notification_settings_email_description {
    return Intl.message(
      'Receive notifications via email.',
      name: 'notification_settings_email_description',
      desc: '',
      args: [],
    );
  }

  /// `Push notifications enabled.`
  String get notification_settings_push_enabled {
    return Intl.message(
      'Push notifications enabled.',
      name: 'notification_settings_push_enabled',
      desc: '',
      args: [],
    );
  }

  /// `Push notifications disabled.`
  String get notification_settings_push_disabled {
    return Intl.message(
      'Push notifications disabled.',
      name: 'notification_settings_push_disabled',
      desc: '',
      args: [],
    );
  }

  /// `SMS notifications enabled.`
  String get notification_settings_sms_enabled {
    return Intl.message(
      'SMS notifications enabled.',
      name: 'notification_settings_sms_enabled',
      desc: '',
      args: [],
    );
  }

  /// `SMS notifications disabled.`
  String get notification_settings_sms_disabled {
    return Intl.message(
      'SMS notifications disabled.',
      name: 'notification_settings_sms_disabled',
      desc: '',
      args: [],
    );
  }

  /// `Email notifications enabled.`
  String get notification_settings_email_enabled {
    return Intl.message(
      'Email notifications enabled.',
      name: 'notification_settings_email_enabled',
      desc: '',
      args: [],
    );
  }

  /// `Email notifications disabled.`
  String get notification_settings_email_disabled {
    return Intl.message(
      'Email notifications disabled.',
      name: 'notification_settings_email_disabled',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Sign Up`
  String get signup {
    return Intl.message('Sign Up', name: 'signup', desc: '', args: []);
  }

  /// `Forgot Password?`
  String get forgot_password {
    return Intl.message(
      'Forgot Password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get reset_password {
    return Intl.message(
      'Reset Password',
      name: 'reset_password',
      desc: '',
      args: [],
    );
  }

  /// `Send Reset Link`
  String get send_reset_link {
    return Intl.message(
      'Send Reset Link',
      name: 'send_reset_link',
      desc: '',
      args: [],
    );
  }

  /// `Password reset link has been sent to your email.`
  String get password_reset_success {
    return Intl.message(
      'Password reset link has been sent to your email.',
      name: 'password_reset_success',
      desc: '',
      args: [],
    );
  }

  /// `Password has been reset successfully.`
  String get password_reset_successful {
    return Intl.message(
      'Password has been reset successfully.',
      name: 'password_reset_successful',
      desc: '',
      args: [],
    );
  }

  /// `Failed to reset password. Please try again.`
  String get password_reset_unsuccessful {
    return Intl.message(
      'Failed to reset password. Please try again.',
      name: 'password_reset_unsuccessful',
      desc: '',
      args: [],
    );
  }

  /// `Password reset email has been sent.`
  String get password_reset_email_sent {
    return Intl.message(
      'Password reset email has been sent.',
      name: 'password_reset_email_sent',
      desc: '',
      args: [],
    );
  }

  /// `Failed to send password reset email.`
  String get password_reset_email_failed {
    return Intl.message(
      'Failed to send password reset email.',
      name: 'password_reset_email_failed',
      desc: '',
      args: [],
    );
  }

  /// `Password reset link has been sent to your email.`
  String get password_reset_link_sent {
    return Intl.message(
      'Password reset link has been sent to your email.',
      name: 'password_reset_link_sent',
      desc: '',
      args: [],
    );
  }

  /// `Failed to send password reset link.`
  String get password_reset_link_failed {
    return Intl.message(
      'Failed to send password reset link.',
      name: 'password_reset_link_failed',
      desc: '',
      args: [],
    );
  }

  /// `Password reset link is invalid or expired.`
  String get password_reset_link_invalid {
    return Intl.message(
      'Password reset link is invalid or expired.',
      name: 'password_reset_link_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Password reset link is valid.`
  String get password_reset_link_successful {
    return Intl.message(
      'Password reset link is valid.',
      name: 'password_reset_link_successful',
      desc: '',
      args: [],
    );
  }

  /// `Failed to validate password reset link.`
  String get password_reset_link_unsuccessful {
    return Intl.message(
      'Failed to validate password reset link.',
      name: 'password_reset_link_unsuccessful',
      desc: '',
      args: [],
    );
  }

  /// `Password reset link has expired.`
  String get password_reset_link_expired {
    return Intl.message(
      'Password reset link has expired.',
      name: 'password_reset_link_expired',
      desc: '',
      args: [],
    );
  }

  /// `Password reset link has already been used.`
  String get password_reset_link_used {
    return Intl.message(
      'Password reset link has already been used.',
      name: 'password_reset_link_used',
      desc: '',
      args: [],
    );
  }

  /// `Password reset link not found.`
  String get password_reset_link_not_found {
    return Intl.message(
      'Password reset link not found.',
      name: 'password_reset_link_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Password reset link has an invalid token.`
  String get password_reset_link_invalid_token {
    return Intl.message(
      'Password reset link has an invalid token.',
      name: 'password_reset_link_invalid_token',
      desc: '',
      args: [],
    );
  }

  /// `Password reset link has an invalid email address.`
  String get password_reset_link_invalid_email {
    return Intl.message(
      'Password reset link has an invalid email address.',
      name: 'password_reset_link_invalid_email',
      desc: '',
      args: [],
    );
  }

  /// `Password reset link has an invalid request.`
  String get password_reset_link_invalid_request {
    return Intl.message(
      'Password reset link has an invalid request.',
      name: 'password_reset_link_invalid_request',
      desc: '',
      args: [],
    );
  }

  /// `Password reset link has an invalid user.`
  String get password_reset_link_invalid_user {
    return Intl.message(
      'Password reset link has an invalid user.',
      name: 'password_reset_link_invalid_user',
      desc: '',
      args: [],
    );
  }

  /// `Password reset link has an invalid code.`
  String get password_reset_link_invalid_code {
    return Intl.message(
      'Password reset link has an invalid code.',
      name: 'password_reset_link_invalid_code',
      desc: '',
      args: [],
    );
  }

  /// `Password reset link has an invalid URL.`
  String get password_reset_link_invalid_url {
    return Intl.message(
      'Password reset link has an invalid URL.',
      name: 'password_reset_link_invalid_url',
      desc: '',
      args: [],
    );
  }

  /// `Password reset link has an invalid method.`
  String get password_reset_link_invalid_method {
    return Intl.message(
      'Password reset link has an invalid method.',
      name: 'password_reset_link_invalid_method',
      desc: '',
      args: [],
    );
  }

  /// `Password reset link has an invalid IP address.`
  String get password_reset_link_invalid_ip {
    return Intl.message(
      'Password reset link has an invalid IP address.',
      name: 'password_reset_link_invalid_ip',
      desc: '',
      args: [],
    );
  }

  /// `Password reset link has an invalid user agent.`
  String get password_reset_link_invalid_agent {
    return Intl.message(
      'Password reset link has an invalid user agent.',
      name: 'password_reset_link_invalid_agent',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message('Account', name: 'account', desc: '', args: []);
  }

  /// `Orders`
  String get orders {
    return Intl.message('Orders', name: 'orders', desc: '', args: []);
  }

  /// `Addresses`
  String get addresses {
    return Intl.message('Addresses', name: 'addresses', desc: '', args: []);
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Help & Support`
  String get help_support {
    return Intl.message(
      'Help & Support',
      name: 'help_support',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacy_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get log_out {
    return Intl.message('Log Out', name: 'log_out', desc: '', args: []);
  }

  /// `Empty Cart`
  String get empty_cart {
    return Intl.message('Empty Cart', name: 'empty_cart', desc: '', args: []);
  }

  /// `My Orders`
  String get my_orders {
    return Intl.message('My Orders', name: 'my_orders', desc: '', args: []);
  }

  /// `Forgot password?`
  String get forgot_password_question {
    return Intl.message(
      'Forgot password?',
      name: 'forgot_password_question',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get log_in {
    return Intl.message('Log in', name: 'log_in', desc: '', args: []);
  }

  /// `Don't have an account?`
  String get dont_have_account {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dont_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get sign_up {
    return Intl.message('Sign up', name: 'sign_up', desc: '', args: []);
  }

  /// `Get the full template`
  String get get_full_template {
    return Intl.message(
      'Get the full template',
      name: 'get_full_template',
      desc: '',
      args: [],
    );
  }

  /// `Return`
  String get return_to {
    return Intl.message('Return', name: 'return_to', desc: '', args: []);
  }

  /// `Promotions`
  String get promotions {
    return Intl.message('Promotions', name: 'promotions', desc: '', args: []);
  }

  /// `Oops, No Product found!!`
  String get no_product_found {
    return Intl.message(
      'Oops, No Product found!!',
      name: 'no_product_found',
      desc: '',
      args: [],
    );
  }

  /// `No items found`
  String get empty_state {
    return Intl.message(
      'No items found',
      name: 'empty_state',
      desc: '',
      args: [],
    );
  }

  /// `Size`
  String get size {
    return Intl.message('Size', name: 'size', desc: '', args: []);
  }

  /// `Bust`
  String get bust {
    return Intl.message('Bust', name: 'bust', desc: '', args: []);
  }

  /// `Waist`
  String get waist {
    return Intl.message('Waist', name: 'waist', desc: '', args: []);
  }

  /// `Hips`
  String get hips {
    return Intl.message('Hips', name: 'hips', desc: '', args: []);
  }

  /// `Continue Shopping`
  String get continue_shopping {
    return Intl.message(
      'Continue Shopping',
      name: 'continue_shopping',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message('Checkout', name: 'checkout', desc: '', args: []);
  }

  /// `Shipping Methods`
  String get shipping_methods {
    return Intl.message(
      'Shipping Methods',
      name: 'shipping_methods',
      desc: '',
      args: [],
    );
  }

  /// `Choose a shipping method`
  String get choose_shipping_method {
    return Intl.message(
      'Choose a shipping method',
      name: 'choose_shipping_method',
      desc: '',
      args: [],
    );
  }

  /// `No shipping methods available!!`
  String get no_shipping_methods {
    return Intl.message(
      'No shipping methods available!!',
      name: 'no_shipping_methods',
      desc: '',
      args: [],
    );
  }

  /// `Review Your Order`
  String get review_your_order {
    return Intl.message(
      'Review Your Order',
      name: 'review_your_order',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Date`
  String get delivery_date {
    return Intl.message(
      'Delivery Date',
      name: 'delivery_date',
      desc: '',
      args: [],
    );
  }

  /// `Create New Address`
  String get create_new_address {
    return Intl.message(
      'Create New Address',
      name: 'create_new_address',
      desc: '',
      args: [],
    );
  }

  /// `Update Address`
  String get update_address {
    return Intl.message(
      'Update Address',
      name: 'update_address',
      desc: '',
      args: [],
    );
  }

  /// `PRESTIGE`
  String get prestige {
    return Intl.message('PRESTIGE', name: 'prestige', desc: '', args: []);
  }

  /// `Want To Change Password ?`
  String get want_to_change_password {
    return Intl.message(
      'Want To Change Password ?',
      name: 'want_to_change_password',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message('Send', name: 'send', desc: '', args: []);
  }

  /// `return to`
  String get return_to_login {
    return Intl.message(
      'return to',
      name: 'return_to_login',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message('Submit', name: 'submit', desc: '', args: []);
  }

  /// `Upload your Official Paper here`
  String get upload_official_paper {
    return Intl.message(
      'Upload your Official Paper here',
      name: 'upload_official_paper',
      desc: '',
      args: [],
    );
  }

  /// `Do you have an account?`
  String get do_you_have_account {
    return Intl.message(
      'Do you have an account?',
      name: 'do_you_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get log_in_small {
    return Intl.message('Log in', name: 'log_in_small', desc: '', args: []);
  }

  /// `Settings`
  String get settings_button {
    return Intl.message(
      'Settings',
      name: 'settings_button',
      desc: '',
      args: [],
    );
  }

  /// `Order`
  String get order {
    return Intl.message('Order', name: 'order', desc: '', args: []);
  }

  /// `Based on {count} Reviews`
  String based_on_reviews(Object count) {
    return Intl.message(
      'Based on $count Reviews',
      name: 'based_on_reviews',
      desc: '',
      args: [count],
    );
  }

  /// `Get full code`
  String get get_full_code {
    return Intl.message(
      'Get full code',
      name: 'get_full_code',
      desc: '',
      args: [],
    );
  }

  /// `Product Details`
  String get product_details {
    return Intl.message(
      'Product Details',
      name: 'product_details',
      desc: '',
      args: [],
    );
  }

  /// `Variations`
  String get variations {
    return Intl.message('Variations', name: 'variations', desc: '', args: []);
  }

  /// `You may also like`
  String get you_may_also_like {
    return Intl.message(
      'You may also like',
      name: 'you_may_also_like',
      desc: '',
      args: [],
    );
  }

  /// `Product added to cart`
  String get product_added_to_cart {
    return Intl.message(
      'Product added to cart',
      name: 'product_added_to_cart',
      desc: '',
      args: [],
    );
  }

  /// `Added {quantity} {unit} to cart`
  String added_quantity_to_cart(Object quantity, Object unit) {
    return Intl.message(
      'Added $quantity $unit to cart',
      name: 'added_quantity_to_cart',
      desc: '',
      args: [quantity, unit],
    );
  }

  /// `Failed to add to cart`
  String get failed_to_add_to_cart {
    return Intl.message(
      'Failed to add to cart',
      name: 'failed_to_add_to_cart',
      desc: '',
      args: [],
    );
  }

  /// `Please select a variation`
  String get please_select_variation {
    return Intl.message(
      'Please select a variation',
      name: 'please_select_variation',
      desc: '',
      args: [],
    );
  }

  /// `Promotions`
  String get pormotions {
    return Intl.message('Promotions', name: 'pormotions', desc: '', args: []);
  }

  /// `Buy {x} And Get {y} {product}`
  String buy_x_get_y(Object x, Object y, Object product) {
    return Intl.message(
      'Buy $x And Get $y $product',
      name: 'buy_x_get_y',
      desc: '',
      args: [x, y, product],
    );
  }

  /// `Min Amount`
  String get min_amount {
    return Intl.message('Min Amount', name: 'min_amount', desc: '', args: []);
  }

  /// `Min Items: {items}`
  String min_items(Object items) {
    return Intl.message(
      'Min Items: $items',
      name: 'min_items',
      desc: '',
      args: [items],
    );
  }

  /// `Payment Summary`
  String get payment_summary {
    return Intl.message(
      'Payment Summary',
      name: 'payment_summary',
      desc: '',
      args: [],
    );
  }

  /// `Sub Total`
  String get sub_total {
    return Intl.message('Sub Total', name: 'sub_total', desc: '', args: []);
  }

  /// `Discount`
  String get discount {
    return Intl.message('Discount', name: 'discount', desc: '', args: []);
  }

  /// `Delivery Fee`
  String get delivery_fee {
    return Intl.message(
      'Delivery Fee',
      name: 'delivery_fee',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message('Total', name: 'total', desc: '', args: []);
  }

  /// `Place Order`
  String get place_order {
    return Intl.message('Place Order', name: 'place_order', desc: '', args: []);
  }

  /// `Enter your coupon code`
  String get enter_coupon_code {
    return Intl.message(
      'Enter your coupon code',
      name: 'enter_coupon_code',
      desc: '',
      args: [],
    );
  }

  /// `Buy`
  String get buy {
    return Intl.message('Buy', name: 'buy', desc: '', args: []);
  }

  /// `Shipping Information`
  String get shipping_information {
    return Intl.message(
      'Shipping Information',
      name: 'shipping_information',
      desc: '',
      args: [],
    );
  }

  /// `Returns`
  String get returns {
    return Intl.message('Returns', name: 'returns', desc: '', args: []);
  }

  /// `Reviews`
  String get reviews {
    return Intl.message('Reviews', name: 'reviews', desc: '', args: []);
  }

  /// `Promotion Title`
  String get promotion_title {
    return Intl.message(
      'Promotion Title',
      name: 'promotion_title',
      desc: '',
      args: [],
    );
  }

  /// `Promotion Description`
  String get promotion_description {
    return Intl.message(
      'Promotion Description',
      name: 'promotion_description',
      desc: '',
      args: [],
    );
  }

  /// `End Date`
  String get end_date {
    return Intl.message('End Date', name: 'end_date', desc: '', args: []);
  }

  /// `PRESTIGE`
  String get prestige_brand {
    return Intl.message('PRESTIGE', name: 'prestige_brand', desc: '', args: []);
  }

  /// `Quantity`
  String get quantity {
    return Intl.message('Quantity', name: 'quantity', desc: '', args: []);
  }

  /// `Welcome back!`
  String get welcome_back {
    return Intl.message(
      'Welcome back!',
      name: 'welcome_back',
      desc: '',
      args: [],
    );
  }

  /// `Log in with your data that you entered during your registration.`
  String get login_description {
    return Intl.message(
      'Log in with your data that you entered during your registration.',
      name: 'login_description',
      desc: '',
      args: [],
    );
  }

  /// `Let's get started!`
  String get lets_get_started {
    return Intl.message(
      'Let\'s get started!',
      name: 'lets_get_started',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your valid data in order to create an account.`
  String get signup_description {
    return Intl.message(
      'Please enter your valid data in order to create an account.',
      name: 'signup_description',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message('Register', name: 'register', desc: '', args: []);
  }

  /// `Email address`
  String get email_address {
    return Intl.message(
      'Email address',
      name: 'email_address',
      desc: '',
      args: [],
    );
  }

  /// `Company Name`
  String get company_name {
    return Intl.message(
      'Company Name',
      name: 'company_name',
      desc: '',
      args: [],
    );
  }

  /// `Group (Wholesale, Merchant, Retails, Van Sales ...)`
  String get group_type {
    return Intl.message(
      'Group (Wholesale, Merchant, Retails, Van Sales ...)',
      name: 'group_type',
      desc: '',
      args: [],
    );
  }

  /// `required`
  String get required {
    return Intl.message('required', name: 'required', desc: '', args: []);
  }

  /// `Password doesn't match`
  String get password_no_match {
    return Intl.message(
      'Password doesn\'t match',
      name: 'password_no_match',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirm_password {
    return Intl.message(
      'Confirm Password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `VAT Number`
  String get vat_number {
    return Intl.message('VAT Number', name: 'vat_number', desc: '', args: []);
  }

  /// `Phone Number`
  String get phone_number {
    return Intl.message(
      'Phone Number',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Postal Code`
  String get postal_code {
    return Intl.message('Postal Code', name: 'postal_code', desc: '', args: []);
  }

  /// `Select Country`
  String get select_country {
    return Intl.message(
      'Select Country',
      name: 'select_country',
      desc: '',
      args: [],
    );
  }

  /// `Select City`
  String get select_city {
    return Intl.message('Select City', name: 'select_city', desc: '', args: []);
  }

  /// `Full address`
  String get full_address {
    return Intl.message(
      'Full address',
      name: 'full_address',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get change_password {
    return Intl.message(
      'Change Password',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to remove your account ?`
  String get remove_account_confirmation {
    return Intl.message(
      'Are you sure you want to remove your account ?',
      name: 'remove_account_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Unit price`
  String get unit_price {
    return Intl.message('Unit price', name: 'unit_price', desc: '', args: []);
  }

  /// `Piece`
  String get unit_piece {
    return Intl.message('Piece', name: 'unit_piece', desc: '', args: []);
  }

  /// `Bag`
  String get unit_bag {
    return Intl.message('Bag', name: 'unit_bag', desc: '', args: []);
  }

  /// `No shipping methods available!!`
  String get no_shipping_methods_available {
    return Intl.message(
      'No shipping methods available!!',
      name: 'no_shipping_methods_available',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings_label {
    return Intl.message('Settings', name: 'settings_label', desc: '', args: []);
  }

  /// `Your Location Services are turned off.`
  String get location_services_off {
    return Intl.message(
      'Your Location Services are turned off.',
      name: 'location_services_off',
      desc: '',
      args: [],
    );
  }

  /// `Turn on Location Services in your device Settings to search for stores by current location. You can still search by Country/Region, City or Zip Code.`
  String get location_services_description {
    return Intl.message(
      'Turn on Location Services in your device Settings to search for stores by current location. You can still search by Country/Region, City or Zip Code.',
      name: 'location_services_description',
      desc: '',
      args: [],
    );
  }

  /// `Return`
  String get return1 {
    return Intl.message('Return', name: 'return1', desc: '', args: []);
  }

  /// `Free pre-paid returns and exchanges for orders shipped to the US. Get refunded faster with easy online returns and print a FREE pre-paid return SmartLabel@ online! Return or exchange any unused or defective merchandise by mail or at one of our US or Canada store locations. Made to order items cannot be canceled, exchange or returned.`
  String get returns_description {
    return Intl.message(
      'Free pre-paid returns and exchanges for orders shipped to the US. Get refunded faster with easy online returns and print a FREE pre-paid return SmartLabel@ online! Return or exchange any unused or defective merchandise by mail or at one of our US or Canada store locations. Made to order items cannot be canceled, exchange or returned.',
      name: 'returns_description',
      desc: '',
      args: [],
    );
  }

  /// `status`
  String get status {
    return Intl.message('status', name: 'status', desc: '', args: []);
  }

  /// `JOD`
  String get jod {
    return Intl.message('JOD', name: 'jod', desc: '', args: []);
  }

  /// `Mustafa`
  String get mustafa {
    return Intl.message('Mustafa', name: 'mustafa', desc: '', args: []);
  }

  /// `Home`
  String get home_nav {
    return Intl.message('Home', name: 'home_nav', desc: '', args: []);
  }

  /// `Shop`
  String get shop_nav {
    return Intl.message('Shop', name: 'shop_nav', desc: '', args: []);
  }

  /// `Cart`
  String get cart_nav {
    return Intl.message('Cart', name: 'cart_nav', desc: '', args: []);
  }

  /// `Promotions`
  String get promotions_nav {
    return Intl.message(
      'Promotions',
      name: 'promotions_nav',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile_nav {
    return Intl.message('Profile', name: 'profile_nav', desc: '', args: []);
  }

  /// `Enter a valid email address`
  String get enter_valid_email {
    return Intl.message(
      'Enter a valid email address',
      name: 'enter_valid_email',
      desc: '',
      args: [],
    );
  }

  /// `passwords do not match`
  String get passwords_no_match {
    return Intl.message(
      'passwords do not match',
      name: 'passwords_no_match',
      desc: '',
      args: [],
    );
  }

  /// `Loading`
  String get loading_text {
    return Intl.message('Loading', name: 'loading_text', desc: '', args: []);
  }

  /// `End at`
  String get end_at {
    return Intl.message('End at', name: 'end_at', desc: '', args: []);
  }

  /// `Buy {buyQuantity} {buyProduct} and get {getProduct}`
  String buy_and_get(Object buyQuantity, Object buyProduct, Object getProduct) {
    return Intl.message(
      'Buy $buyQuantity $buyProduct and get $getProduct',
      name: 'buy_and_get',
      desc: '',
      args: [buyQuantity, buyProduct, getProduct],
    );
  }

  /// `S`
  String get size_s {
    return Intl.message('S', name: 'size_s', desc: '', args: []);
  }

  /// `M`
  String get size_m {
    return Intl.message('M', name: 'size_m', desc: '', args: []);
  }

  /// `L`
  String get size_l {
    return Intl.message('L', name: 'size_l', desc: '', args: []);
  }

  /// `XL`
  String get size_xl {
    return Intl.message('XL', name: 'size_xl', desc: '', args: []);
  }

  /// `Privacy Policy`
  String get privacy_policy_title {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy_policy_title',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message('Back', name: 'back', desc: '', args: []);
  }

  /// `Name`
  String get name {
    return Intl.message('Name', name: 'name', desc: '', args: []);
  }

  /// `More`
  String get more {
    return Intl.message('More', name: 'more', desc: '', args: []);
  }

  /// `First Name`
  String get first_name {
    return Intl.message('First Name', name: 'first_name', desc: '', args: []);
  }

  /// `Last Name`
  String get last_name {
    return Intl.message('Last Name', name: 'last_name', desc: '', args: []);
  }

  /// `New Password`
  String get new_password {
    return Intl.message(
      'New Password',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `Old Password`
  String get old_password {
    return Intl.message(
      'Old Password',
      name: 'old_password',
      desc: '',
      args: [],
    );
  }

  /// `Subject`
  String get subject {
    return Intl.message('Subject', name: 'subject', desc: '', args: []);
  }

  /// `Message`
  String get message {
    return Intl.message('Message', name: 'message', desc: '', args: []);
  }

  /// `Gallery`
  String get gallery {
    return Intl.message('Gallery', name: 'gallery', desc: '', args: []);
  }

  /// `Camera`
  String get camera {
    return Intl.message('Camera', name: 'camera', desc: '', args: []);
  }

  /// `Video`
  String get video {
    return Intl.message('Video', name: 'video', desc: '', args: []);
  }

  /// `Date`
  String get date {
    return Intl.message('Date', name: 'date', desc: '', args: []);
  }

  /// `Time`
  String get time {
    return Intl.message('Time', name: 'time', desc: '', args: []);
  }

  /// `Price`
  String get price {
    return Intl.message('Price', name: 'price', desc: '', args: []);
  }

  /// `Payment`
  String get payment {
    return Intl.message('Payment', name: 'payment', desc: '', args: []);
  }

  /// `Payment Method`
  String get payment_method {
    return Intl.message(
      'Payment Method',
      name: 'payment_method',
      desc: '',
      args: [],
    );
  }

  /// `About Us`
  String get about_us {
    return Intl.message('About Us', name: 'about_us', desc: '', args: []);
  }

  /// `Contact Us`
  String get contact_us {
    return Intl.message('Contact Us', name: 'contact_us', desc: '', args: []);
  }

  /// `FAQ`
  String get faq {
    return Intl.message('FAQ', name: 'faq', desc: '', args: []);
  }

  /// `Terms and Conditions`
  String get terms_and_conditions {
    return Intl.message(
      'Terms and Conditions',
      name: 'terms_and_conditions',
      desc: '',
      args: [],
    );
  }

  /// `Rate App`
  String get rate_app {
    return Intl.message('Rate App', name: 'rate_app', desc: '', args: []);
  }

  /// `My Profile`
  String get my_profile {
    return Intl.message('My Profile', name: 'my_profile', desc: '', args: []);
  }

  /// `Wallet`
  String get wallet {
    return Intl.message('Wallet', name: 'wallet', desc: '', args: []);
  }

  /// `Welcome to our app`
  String get welcome_to_app {
    return Intl.message(
      'Welcome to our app',
      name: 'welcome_to_app',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get get_started {
    return Intl.message('Get Started', name: 'get_started', desc: '', args: []);
  }

  /// `or`
  String get or {
    return Intl.message('or', name: 'or', desc: '', args: []);
  }

  // skipped getter for the 'current' key

  /// `Completed`
  String get the_completed {
    return Intl.message('Completed', name: 'the_completed', desc: '', args: []);
  }

  /// `Cancelled`
  String get the_cancelled {
    return Intl.message('Cancelled', name: 'the_cancelled', desc: '', args: []);
  }

  /// `Male`
  String get male {
    return Intl.message('Male', name: 'male', desc: '', args: []);
  }

  /// `Female`
  String get female {
    return Intl.message('Female', name: 'female', desc: '', args: []);
  }

  /// `Individual`
  String get individual {
    return Intl.message('Individual', name: 'individual', desc: '', args: []);
  }

  /// `Company`
  String get company {
    return Intl.message('Company', name: 'company', desc: '', args: []);
  }

  /// `Select Image Source`
  String get select_image_source {
    return Intl.message(
      'Select Image Source',
      name: 'select_image_source',
      desc: '',
      args: [],
    );
  }

  /// `Join Our World`
  String get join_our_world {
    return Intl.message(
      'Join Our World',
      name: 'join_our_world',
      desc: '',
      args: [],
    );
  }

  /// `App Language`
  String get app_language {
    return Intl.message(
      'App Language',
      name: 'app_language',
      desc: '',
      args: [],
    );
  }

  /// `My Addresses`
  String get my_addresses {
    return Intl.message(
      'My Addresses',
      name: 'my_addresses',
      desc: '',
      args: [],
    );
  }

  /// `Favorite`
  String get favorite {
    return Intl.message('Favorite', name: 'favorite', desc: '', args: []);
  }

  /// `Services`
  String get services {
    return Intl.message('Services', name: 'services', desc: '', args: []);
  }

  /// `Rates`
  String get rates {
    return Intl.message('Rates', name: 'rates', desc: '', args: []);
  }

  /// `Available`
  String get available {
    return Intl.message('Available', name: 'available', desc: '', args: []);
  }

  /// `Unavailable`
  String get unavailable {
    return Intl.message('Unavailable', name: 'unavailable', desc: '', args: []);
  }

  /// `Good Morning`
  String get good_morning {
    return Intl.message(
      'Good Morning',
      name: 'good_morning',
      desc: '',
      args: [],
    );
  }

  /// `New Orders`
  String get new_orders {
    return Intl.message('New Orders', name: 'new_orders', desc: '', args: []);
  }

  /// `Confirm Delete`
  String get confirm_delete {
    return Intl.message(
      'Confirm Delete',
      name: 'confirm_delete',
      desc: '',
      args: [],
    );
  }

  /// `Passport`
  String get passport {
    return Intl.message('Passport', name: 'passport', desc: '', args: []);
  }

  /// `National ID`
  String get national_id {
    return Intl.message('National ID', name: 'national_id', desc: '', args: []);
  }

  /// `My Files`
  String get my_files {
    return Intl.message('My Files', name: 'my_files', desc: '', args: []);
  }

  /// `Select Action`
  String get select_action {
    return Intl.message(
      'Select Action',
      name: 'select_action',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get other {
    return Intl.message('Other', name: 'other', desc: '', args: []);
  }

  /// `Let's Start`
  String get lets_start {
    return Intl.message('Let\'s Start', name: 'lets_start', desc: '', args: []);
  }

  /// `Login as Visitor`
  String get login_as_visitor {
    return Intl.message(
      'Login as Visitor',
      name: 'login_as_visitor',
      desc: '',
      args: [],
    );
  }

  /// `Get the full template`
  String get get_the_full_template {
    return Intl.message(
      'Get the full template',
      name: 'get_the_full_template',
      desc: '',
      args: [],
    );
  }

  /// `Link Copied`
  String get link_copied {
    return Intl.message('Link Copied', name: 'link_copied', desc: '', args: []);
  }

  /// `Copy link`
  String get copy_link {
    return Intl.message('Copy link', name: 'copy_link', desc: '', args: []);
  }

  /// `Full name`
  String get full_name {
    return Intl.message('Full name', name: 'full_name', desc: '', args: []);
  }

  /// `Shop Now`
  String get shop_now {
    return Intl.message('Shop Now', name: 'shop_now', desc: '', args: []);
  }

  /// `Not found route`
  String get not_found_route {
    return Intl.message(
      'Not found route',
      name: 'not_found_route',
      desc: '',
      args: [],
    );
  }

  /// `Buy now`
  String get buy_now {
    return Intl.message('Buy now', name: 'buy_now', desc: '', args: []);
  }

  /// `Add to cart`
  String get add_to_cart {
    return Intl.message('Add to cart', name: 'add_to_cart', desc: '', args: []);
  }

  /// `Total price`
  String get total_price {
    return Intl.message('Total price', name: 'total_price', desc: '', args: []);
  }

  /// `CVV`
  String get cvv {
    return Intl.message('CVV', name: 'cvv', desc: '', args: []);
  }

  /// `Ordered`
  String get ordered {
    return Intl.message('Ordered', name: 'ordered', desc: '', args: []);
  }

  /// `Processing`
  String get processing {
    return Intl.message('Processing', name: 'processing', desc: '', args: []);
  }

  /// `Packed`
  String get packed {
    return Intl.message('Packed', name: 'packed', desc: '', args: []);
  }

  /// `Shipped`
  String get shipped {
    return Intl.message('Shipped', name: 'shipped', desc: '', args: []);
  }

  /// `Canceled`
  String get canceled {
    return Intl.message('Canceled', name: 'canceled', desc: '', args: []);
  }

  /// `Delivered`
  String get delivered {
    return Intl.message('Delivered', name: 'delivered', desc: '', args: []);
  }

  /// `WhatsApp not installed`
  String get whatsapp_not_installed {
    return Intl.message(
      'WhatsApp not installed',
      name: 'whatsapp_not_installed',
      desc: '',
      args: [],
    );
  }

  /// `Install WhatsApp First Please`
  String get install_whatsapp_first {
    return Intl.message(
      'Install WhatsApp First Please',
      name: 'install_whatsapp_first',
      desc: '',
      args: [],
    );
  }

  /// `Billing address`
  String get billing_address {
    return Intl.message(
      'Billing address',
      name: 'billing_address',
      desc: '',
      args: [],
    );
  }

  /// `Shipping address`
  String get shipping_address {
    return Intl.message(
      'Shipping address',
      name: 'shipping_address',
      desc: '',
      args: [],
    );
  }

  /// `Please select at least one address option`
  String get select_address_option {
    return Intl.message(
      'Please select at least one address option',
      name: 'select_address_option',
      desc: '',
      args: [],
    );
  }

  /// `Create new address`
  String get create_new_address_button {
    return Intl.message(
      'Create new address',
      name: 'create_new_address_button',
      desc: '',
      args: [],
    );
  }

  /// `Upload your Commercial Register here`
  String get upload_commercial_register {
    return Intl.message(
      'Upload your Commercial Register here',
      name: 'upload_commercial_register',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected error occurred`
  String get unexpected_error {
    return Intl.message(
      'Unexpected error occurred',
      name: 'unexpected_error',
      desc: '',
      args: [],
    );
  }

  /// `Unable to process the data`
  String get unable_to_process {
    return Intl.message(
      'Unable to process the data',
      name: 'unable_to_process',
      desc: '',
      args: [],
    );
  }

  /// `Commercial Register`
  String get commercial_register {
    return Intl.message(
      'Commercial Register',
      name: 'commercial_register',
      desc: '',
      args: [],
    );
  }

  /// `No payment methods available!!`
  String get no_payment_methods_available {
    return Intl.message(
      'No payment methods available!!',
      name: 'no_payment_methods_available',
      desc: '',
      args: [],
    );
  }

  /// `Error loading cart`
  String get error_loading_cart {
    return Intl.message(
      'Error loading cart',
      name: 'error_loading_cart',
      desc: '',
      args: [],
    );
  }

  /// `Your cart is empty`
  String get your_cart_is_empty {
    return Intl.message(
      'Your cart is empty',
      name: 'your_cart_is_empty',
      desc: '',
      args: [],
    );
  }

  /// `Add some products to your cart before checkout`
  String get add_products_before_checkout {
    return Intl.message(
      'Add some products to your cart before checkout',
      name: 'add_products_before_checkout',
      desc: '',
      args: [],
    );
  }

  /// `Review the products`
  String get review_the_products {
    return Intl.message(
      'Review the products',
      name: 'review_the_products',
      desc: '',
      args: [],
    );
  }

  /// `Please select shipping method`
  String get please_select_shipping_method {
    return Intl.message(
      'Please select shipping method',
      name: 'please_select_shipping_method',
      desc: '',
      args: [],
    );
  }

  /// `Please select payment method`
  String get please_select_payment_method {
    return Intl.message(
      'Please select payment method',
      name: 'please_select_payment_method',
      desc: '',
      args: [],
    );
  }

  /// `Please select delivery date`
  String get please_select_delivery_date {
    return Intl.message(
      'Please select delivery date',
      name: 'please_select_delivery_date',
      desc: '',
      args: [],
    );
  }

  /// `Payment Confirmation`
  String get payment_confirmation {
    return Intl.message(
      'Payment Confirmation',
      name: 'payment_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `You will be redirected to PayTabs to complete your payment. If you cancel the payment, your order will still be created and you can pay later.`
  String get payment_redirect_message {
    return Intl.message(
      'You will be redirected to PayTabs to complete your payment. If you cancel the payment, your order will still be created and you can pay later.',
      name: 'payment_redirect_message',
      desc: '',
      args: [],
    );
  }

  /// `Proceed to Payment`
  String get proceed_to_payment {
    return Intl.message(
      'Proceed to Payment',
      name: 'proceed_to_payment',
      desc: '',
      args: [],
    );
  }

  /// `Office`
  String get office {
    return Intl.message('Office', name: 'office', desc: '', args: []);
  }

  /// `Change Address`
  String get change_address {
    return Intl.message(
      'Change Address',
      name: 'change_address',
      desc: '',
      args: [],
    );
  }

  /// `Default Billing & Shipping`
  String get default_billing_shipping {
    return Intl.message(
      'Default Billing & Shipping',
      name: 'default_billing_shipping',
      desc: '',
      args: [],
    );
  }

  /// `Default Shipping Address`
  String get default_shipping_address {
    return Intl.message(
      'Default Shipping Address',
      name: 'default_shipping_address',
      desc: '',
      args: [],
    );
  }

  /// `Default Billing Address`
  String get default_billing_address {
    return Intl.message(
      'Default Billing Address',
      name: 'default_billing_address',
      desc: '',
      args: [],
    );
  }

  /// `Credit/Debit Card`
  String get credit_debit_card {
    return Intl.message(
      'Credit/Debit Card',
      name: 'credit_debit_card',
      desc: '',
      args: [],
    );
  }

  /// `Pay securely with your credit or debit card`
  String get credit_debit_card_description {
    return Intl.message(
      'Pay securely with your credit or debit card',
      name: 'credit_debit_card_description',
      desc: '',
      args: [],
    );
  }

  /// `Cash on Delivery`
  String get cash_on_delivery {
    return Intl.message(
      'Cash on Delivery',
      name: 'cash_on_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Pay when you receive your order`
  String get cash_on_delivery_description {
    return Intl.message(
      'Pay when you receive your order',
      name: 'cash_on_delivery_description',
      desc: '',
      args: [],
    );
  }

  /// `Credit`
  String get credit {
    return Intl.message('Credit', name: 'credit', desc: '', args: []);
  }

  /// `Pay using your available credit balance`
  String get credit_description {
    return Intl.message(
      'Pay using your available credit balance',
      name: 'credit_description',
      desc: '',
      args: [],
    );
  }

  /// `You will proceed with credit payment. The amount will be deducted from your credit balance.`
  String get credit_payment_confirmation {
    return Intl.message(
      'You will proceed with credit payment. The amount will be deducted from your credit balance.',
      name: 'credit_payment_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Credit Payment`
  String get confirm_credit_payment {
    return Intl.message(
      'Confirm Credit Payment',
      name: 'confirm_credit_payment',
      desc: '',
      args: [],
    );
  }

  /// `Company Name (Optional)`
  String get company_name_optional {
    return Intl.message(
      'Company Name (Optional)',
      name: 'company_name_optional',
      desc: '',
      args: [],
    );
  }

  /// `Group (Wholesale, Merchant, Retails, Van Sales ...) - Optional`
  String get group_type_optional {
    return Intl.message(
      'Group (Wholesale, Merchant, Retails, Van Sales ...) - Optional',
      name: 'group_type_optional',
      desc: '',
      args: [],
    );
  }

  /// `VAT Number (Optional)`
  String get vat_number_optional {
    return Intl.message(
      'VAT Number (Optional)',
      name: 'vat_number_optional',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number (Optional)`
  String get phone_number_optional {
    return Intl.message(
      'Phone Number (Optional)',
      name: 'phone_number_optional',
      desc: '',
      args: [],
    );
  }

  /// `Postal Code (Optional)`
  String get postal_code_optional {
    return Intl.message(
      'Postal Code (Optional)',
      name: 'postal_code_optional',
      desc: '',
      args: [],
    );
  }

  /// `Select Country (Optional)`
  String get select_country_optional {
    return Intl.message(
      'Select Country (Optional)',
      name: 'select_country_optional',
      desc: '',
      args: [],
    );
  }

  /// `Select City (Optional)`
  String get select_city_optional {
    return Intl.message(
      'Select City (Optional)',
      name: 'select_city_optional',
      desc: '',
      args: [],
    );
  }

  /// `Full address (Optional)`
  String get full_address_optional {
    return Intl.message(
      'Full address (Optional)',
      name: 'full_address_optional',
      desc: '',
      args: [],
    );
  }

  /// `Lost your password?`
  String get lost_password_title {
    return Intl.message(
      'Lost your password?',
      name: 'lost_password_title',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your valid data in order to restore your account.`
  String get lost_password_description {
    return Intl.message(
      'Please enter your valid data in order to restore your account.',
      name: 'lost_password_description',
      desc: '',
      args: [],
    );
  }

  /// `Enter OTP`
  String get enter_otp {
    return Intl.message('Enter OTP', name: 'enter_otp', desc: '', args: []);
  }

  /// `Egypt`
  String get egypt {
    return Intl.message('Egypt', name: 'egypt', desc: '', args: []);
  }

  /// `Deals`
  String get deals {
    return Intl.message('Deals', name: 'deals', desc: '', args: []);
  }

  /// `Featured Products`
  String get featured_products {
    return Intl.message(
      'Featured Products',
      name: 'featured_products',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categories {
    return Intl.message('Categories', name: 'categories', desc: '', args: []);
  }

  /// `Product info`
  String get product_info {
    return Intl.message(
      'Product info',
      name: 'product_info',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid Jordan phone number (9 digits)`
  String get jordan_phone_validation {
    return Intl.message(
      'Please enter a valid Jordan phone number (9 digits)',
      name: 'jordan_phone_validation',
      desc: '',
      args: [],
    );
  }

  /// `Jordan phone numbers should start with 7`
  String get jordan_phone_start_7 {
    return Intl.message(
      'Jordan phone numbers should start with 7',
      name: 'jordan_phone_start_7',
      desc: '',
      args: [],
    );
  }

  /// `Please select a country`
  String get please_select_country {
    return Intl.message(
      'Please select a country',
      name: 'please_select_country',
      desc: '',
      args: [],
    );
  }

  /// `Please select a city`
  String get please_select_city {
    return Intl.message(
      'Please select a city',
      name: 'please_select_city',
      desc: '',
      args: [],
    );
  }

  /// `Please select a country first`
  String get please_select_country_first {
    return Intl.message(
      'Please select a country first',
      name: 'please_select_country_first',
      desc: '',
      args: [],
    );
  }

  /// `Load More Countries`
  String get load_more_countries {
    return Intl.message(
      'Load More Countries',
      name: 'load_more_countries',
      desc: '',
      args: [],
    );
  }

  /// `Load More Cities`
  String get load_more_cities {
    return Intl.message(
      'Load More Cities',
      name: 'load_more_cities',
      desc: '',
      args: [],
    );
  }

  /// `Passwords match`
  String get passwords_match {
    return Intl.message(
      'Passwords match',
      name: 'passwords_match',
      desc: '',
      args: [],
    );
  }

  /// `Basic Info`
  String get basic_info {
    return Intl.message('Basic Info', name: 'basic_info', desc: '', args: []);
  }

  /// `Location`
  String get location {
    return Intl.message('Location', name: 'location', desc: '', args: []);
  }

  /// `Previous`
  String get previous {
    return Intl.message('Previous', name: 'previous', desc: '', args: []);
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Verify Account`
  String get verify_account {
    return Intl.message(
      'Verify Account',
      name: 'verify_account',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the OTP sent to your phone number to verify your account.`
  String get verify_account_description {
    return Intl.message(
      'Please enter the OTP sent to your phone number to verify your account.',
      name: 'verify_account_description',
      desc: '',
      args: [],
    );
  }

  /// `OTP verified successfully! You can now login.`
  String get otp_verified_successfully {
    return Intl.message(
      'OTP verified successfully! You can now login.',
      name: 'otp_verified_successfully',
      desc: '',
      args: [],
    );
  }

  /// `OTP sent to {phone}`
  String otp_sent_to_phone(Object phone) {
    return Intl.message(
      'OTP sent to $phone',
      name: 'otp_sent_to_phone',
      desc: '',
      args: [phone],
    );
  }

  /// `Phone number not provided. Please try again.`
  String get phone_number_not_provided {
    return Intl.message(
      'Phone number not provided. Please try again.',
      name: 'phone_number_not_provided',
      desc: '',
      args: [],
    );
  }

  /// `Products`
  String get products {
    return Intl.message('Products', name: 'products', desc: '', args: []);
  }

  /// `Load More`
  String get load_more {
    return Intl.message('Load More', name: 'load_more', desc: '', args: []);
  }

  /// `You must have an address to checkout. Please create an address first.`
  String get must_have_address_to_checkout {
    return Intl.message(
      'You must have an address to checkout. Please create an address first.',
      name: 'must_have_address_to_checkout',
      desc: '',
      args: [],
    );
  }

  /// `Invalid OTP`
  String get invalid_otp {
    return Intl.message('Invalid OTP', name: 'invalid_otp', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

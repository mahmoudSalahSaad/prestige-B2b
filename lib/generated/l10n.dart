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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
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
    return Intl.message(
      'Loading...',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
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
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get remove {
    return Intl.message(
      'Remove',
      name: 'remove',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to proceed?`
  String get confirm {
    return Intl.message(
      'Are you sure you want to proceed?',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `State`
  String get state {
    return Intl.message(
      'State',
      name: 'state',
      desc: '',
      args: [],
    );
  }

  /// `Zip Code`
  String get zip {
    return Intl.message(
      'Zip Code',
      name: 'zip',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country {
    return Intl.message(
      'Country',
      name: 'country',
      desc: '',
      args: [],
    );
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
    return Intl.message(
      'View All',
      name: 'view_all',
      desc: '',
      args: [],
    );
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
    return Intl.message(
      'Delete All',
      name: 'delete_all',
      desc: '',
      args: [],
    );
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
    return Intl.message(
      'Select All',
      name: 'select_all',
      desc: '',
      args: [],
    );
  }

  /// `Select None`
  String get select_none {
    return Intl.message(
      'Select None',
      name: 'select_none',
      desc: '',
      args: [],
    );
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
    return Intl.message(
      'Select',
      name: 'select',
      desc: '',
      args: [],
    );
  }

  /// `Unselect`
  String get unselect {
    return Intl.message(
      'Unselect',
      name: 'unselect',
      desc: '',
      args: [],
    );
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
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signup {
    return Intl.message(
      'Sign Up',
      name: 'signup',
      desc: '',
      args: [],
    );
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
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
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

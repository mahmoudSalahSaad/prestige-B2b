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

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "account_created": MessageLookupByLibrary.simpleMessage(
            "Account created successfully."),
        "account_creation_failed":
            MessageLookupByLibrary.simpleMessage("Failed to create account."),
        "account_deleted": MessageLookupByLibrary.simpleMessage(
            "Account deleted successfully."),
        "account_deletion_failed":
            MessageLookupByLibrary.simpleMessage("Failed to delete account."),
        "add": MessageLookupByLibrary.simpleMessage("Add"),
        "address": MessageLookupByLibrary.simpleMessage("Address"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "city": MessageLookupByLibrary.simpleMessage("City"),
        "confirm": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to proceed?"),
        "country": MessageLookupByLibrary.simpleMessage("Country"),
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "delete_all": MessageLookupByLibrary.simpleMessage("Delete All"),
        "delete_selected":
            MessageLookupByLibrary.simpleMessage("Delete Selected"),
        "edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "email_verification_failed":
            MessageLookupByLibrary.simpleMessage("Failed to verify email."),
        "email_verified": MessageLookupByLibrary.simpleMessage(
            "Email verified successfully."),
        "error": MessageLookupByLibrary.simpleMessage(
            "An error occurred. Please try again."),
        "forgot_password":
            MessageLookupByLibrary.simpleMessage("Forgot Password?"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "loading": MessageLookupByLibrary.simpleMessage("Loading..."),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "mark_all_as_read":
            MessageLookupByLibrary.simpleMessage("Mark All as Read"),
        "mark_all_as_unread":
            MessageLookupByLibrary.simpleMessage("Mark All as Unread"),
        "mark_as_read": MessageLookupByLibrary.simpleMessage("Mark as Read"),
        "mark_as_unread":
            MessageLookupByLibrary.simpleMessage("Mark as Unread"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "no_notifications":
            MessageLookupByLibrary.simpleMessage("No notifications available."),
        "no_results": MessageLookupByLibrary.simpleMessage("No results found."),
        "notification": MessageLookupByLibrary.simpleMessage("Notification"),
        "notification_settings":
            MessageLookupByLibrary.simpleMessage("Notification Settings"),
        "notification_settings_description":
            MessageLookupByLibrary.simpleMessage(
                "Manage your notification preferences."),
        "notification_settings_email":
            MessageLookupByLibrary.simpleMessage("Email Notifications"),
        "notification_settings_email_description":
            MessageLookupByLibrary.simpleMessage(
                "Receive notifications via email."),
        "notification_settings_email_disabled":
            MessageLookupByLibrary.simpleMessage(
                "Email notifications disabled."),
        "notification_settings_email_enabled":
            MessageLookupByLibrary.simpleMessage(
                "Email notifications enabled."),
        "notification_settings_in_app":
            MessageLookupByLibrary.simpleMessage("In-App Notifications"),
        "notification_settings_in_app_description":
            MessageLookupByLibrary.simpleMessage(
                "Receive notifications within the app."),
        "notification_settings_push":
            MessageLookupByLibrary.simpleMessage("Push Notifications"),
        "notification_settings_push_description":
            MessageLookupByLibrary.simpleMessage(
                "Receive notifications on your device."),
        "notification_settings_push_disabled":
            MessageLookupByLibrary.simpleMessage(
                "Push notifications disabled."),
        "notification_settings_push_enabled":
            MessageLookupByLibrary.simpleMessage("Push notifications enabled."),
        "notification_settings_sms":
            MessageLookupByLibrary.simpleMessage("SMS Notifications"),
        "notification_settings_sms_description":
            MessageLookupByLibrary.simpleMessage(
                "Receive notifications via SMS."),
        "notification_settings_sms_disabled":
            MessageLookupByLibrary.simpleMessage("SMS notifications disabled."),
        "notification_settings_sms_enabled":
            MessageLookupByLibrary.simpleMessage("SMS notifications enabled."),
        "notification_settings_update_failed":
            MessageLookupByLibrary.simpleMessage(
                "Failed to update notification settings."),
        "notification_settings_updated": MessageLookupByLibrary.simpleMessage(
            "Notification settings updated successfully."),
        "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "password_change_failed":
            MessageLookupByLibrary.simpleMessage("Failed to change password."),
        "password_changed": MessageLookupByLibrary.simpleMessage(
            "Password changed successfully."),
        "password_reset": MessageLookupByLibrary.simpleMessage(
            "Password reset link sent to your email."),
        "password_reset_email_failed": MessageLookupByLibrary.simpleMessage(
            "Failed to send password reset email."),
        "password_reset_email_sent": MessageLookupByLibrary.simpleMessage(
            "Password reset email has been sent."),
        "password_reset_failed": MessageLookupByLibrary.simpleMessage(
            "Failed to send password reset link."),
        "password_reset_link_expired": MessageLookupByLibrary.simpleMessage(
            "Password reset link has expired."),
        "password_reset_link_failed": MessageLookupByLibrary.simpleMessage(
            "Failed to send password reset link."),
        "password_reset_link_invalid": MessageLookupByLibrary.simpleMessage(
            "Password reset link is invalid or expired."),
        "password_reset_link_invalid_agent":
            MessageLookupByLibrary.simpleMessage(
                "Password reset link has an invalid user agent."),
        "password_reset_link_invalid_code":
            MessageLookupByLibrary.simpleMessage(
                "Password reset link has an invalid code."),
        "password_reset_link_invalid_email":
            MessageLookupByLibrary.simpleMessage(
                "Password reset link has an invalid email address."),
        "password_reset_link_invalid_ip": MessageLookupByLibrary.simpleMessage(
            "Password reset link has an invalid IP address."),
        "password_reset_link_invalid_method":
            MessageLookupByLibrary.simpleMessage(
                "Password reset link has an invalid method."),
        "password_reset_link_invalid_request":
            MessageLookupByLibrary.simpleMessage(
                "Password reset link has an invalid request."),
        "password_reset_link_invalid_token":
            MessageLookupByLibrary.simpleMessage(
                "Password reset link has an invalid token."),
        "password_reset_link_invalid_url": MessageLookupByLibrary.simpleMessage(
            "Password reset link has an invalid URL."),
        "password_reset_link_invalid_user":
            MessageLookupByLibrary.simpleMessage(
                "Password reset link has an invalid user."),
        "password_reset_link_not_found": MessageLookupByLibrary.simpleMessage(
            "Password reset link not found."),
        "password_reset_link_sent": MessageLookupByLibrary.simpleMessage(
            "Password reset link has been sent to your email."),
        "password_reset_link_successful": MessageLookupByLibrary.simpleMessage(
            "Password reset link is valid."),
        "password_reset_link_unsuccessful":
            MessageLookupByLibrary.simpleMessage(
                "Failed to validate password reset link."),
        "password_reset_link_used": MessageLookupByLibrary.simpleMessage(
            "Password reset link has already been used."),
        "password_reset_success": MessageLookupByLibrary.simpleMessage(
            "Password reset link has been sent to your email."),
        "password_reset_successful": MessageLookupByLibrary.simpleMessage(
            "Password has been reset successfully."),
        "password_reset_unsuccessful": MessageLookupByLibrary.simpleMessage(
            "Failed to reset password. Please try again."),
        "phone": MessageLookupByLibrary.simpleMessage("Phone"),
        "profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "profile_update_failed":
            MessageLookupByLibrary.simpleMessage("Failed to update profile."),
        "profile_updated": MessageLookupByLibrary.simpleMessage(
            "Profile updated successfully."),
        "remove": MessageLookupByLibrary.simpleMessage("Remove"),
        "reset_password":
            MessageLookupByLibrary.simpleMessage("Reset Password"),
        "retry": MessageLookupByLibrary.simpleMessage("Retry"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "search": MessageLookupByLibrary.simpleMessage("Search"),
        "select": MessageLookupByLibrary.simpleMessage("Select"),
        "select_all": MessageLookupByLibrary.simpleMessage("Select All"),
        "select_invert": MessageLookupByLibrary.simpleMessage("Select Invert"),
        "select_items": MessageLookupByLibrary.simpleMessage("Select Items"),
        "select_none": MessageLookupByLibrary.simpleMessage("Select None"),
        "selected_items":
            MessageLookupByLibrary.simpleMessage("Selected Items"),
        "send_reset_link":
            MessageLookupByLibrary.simpleMessage("Send Reset Link"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "signup": MessageLookupByLibrary.simpleMessage("Sign Up"),
        "state": MessageLookupByLibrary.simpleMessage("State"),
        "unselect": MessageLookupByLibrary.simpleMessage("Unselect"),
        "update": MessageLookupByLibrary.simpleMessage("Update"),
        "username": MessageLookupByLibrary.simpleMessage("Username"),
        "view_all": MessageLookupByLibrary.simpleMessage("View All"),
        "welcome":
            MessageLookupByLibrary.simpleMessage("Welcome to our application!"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes"),
        "zip": MessageLookupByLibrary.simpleMessage("Zip Code")
      };
}

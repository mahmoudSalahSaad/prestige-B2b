import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_paytabs_bridge/BaseBillingShippingInfo.dart';
import 'package:flutter_paytabs_bridge/PaymentSdkConfigurationDetails.dart';
import 'package:flutter_paytabs_bridge/PaymentSdkLocale.dart';
import 'package:flutter_paytabs_bridge/PaymentSdkTokeniseType.dart';
import 'package:flutter_paytabs_bridge/PaymentSdkTransactionType.dart';
import 'package:flutter_paytabs_bridge/flutter_paytabs_bridge.dart';
import 'package:shop/core/services/paytabs_config.dart';

class PaymentResult {
  final bool isSuccess;
  final String? transactionId;
  final String? responseCode;

  PaymentResult({
    required this.isSuccess,
    this.transactionId,
    this.responseCode,
  });
}

class PayTabsService {
  static Future<PaymentResult> startPayment({
    required BuildContext context,
    required String cartId,
    required String cartDescription,
    required double amount,
    required String customerEmail,
    required String customerName,
    required String customerPhone,
  }) async {
    try {
      // Create a completer to handle the async callback
      final completer = Completer<PaymentResult>();

      // Configure the billing & shipping information for this payment
      var billingDetails = BillingDetails(
          customerName,
          customerEmail,
          customerPhone,
          "Customer Address", // TODO: Get actual address from user profile
          PayTabsConfig.region,
          "Amman", // TODO: Get actual city from user profile
          "Amman", // TODO: Get actual state from user profile
          "11183" // TODO: Get actual postal code from user profile
          );

      var shippingDetails = ShippingDetails(
          customerName,
          customerEmail,
          customerPhone,
          "Shipping Address", // TODO: Get actual shipping address
          PayTabsConfig.region,
          "Amman", // TODO: Get actual shipping city
          "Amman", // TODO: Get actual shipping state
          "11183" // TODO: Get actual shipping postal code
          );

      // Create PaymentSdkConfigurationDetails object with credentials and payment details
      var configuration = PaymentSdkConfigurationDetails(
        profileId: PayTabsConfig.profileId,
        serverKey: PayTabsConfig.serverKey,
        clientKey: PayTabsConfig.clientKey,
        cartId: cartId,
        cartDescription: cartDescription,
        merchantName: PayTabsConfig.merchantName,
        screentTitle: "Pay with Card",
        billingDetails: billingDetails,
        shippingDetails: shippingDetails,
        locale: PaymentSdkLocale.EN,
        amount: amount,
        currencyCode: PayTabsConfig.currency,
        merchantCountryCode: PayTabsConfig.region,
        transactionType: PaymentSdkTransactionType.SALE,
        tokeniseType: PaymentSdkTokeniseType.MERCHANT_MANDATORY,
      );

      // Start the payment using the official PayTabs SDK
      FlutterPaytabsBridge.startCardPayment(configuration, (event) {
        print("PayTabs SDK Event: $event");

        if (event["status"] == "success") {
          // Handle transaction details here
          var transactionDetails = event["data"];
          print("Transaction Details: $transactionDetails");

          if (transactionDetails["isSuccess"]) {
            print("successful transaction");

            // Complete the future with success result
            completer.complete(PaymentResult(
              isSuccess: true,
              transactionId: transactionDetails["transactionReference"] ??
                  "TXN_${DateTime.now().millisecondsSinceEpoch}",
              responseCode: transactionDetails["responseCode"] ?? "00",
            ));
          } else {
            print("failed transaction");

            // Complete the future with failure result
            completer.complete(PaymentResult(
              isSuccess: false,
              responseCode: transactionDetails["responseCode"] ?? "01",
            ));
          }
        } else if (event["status"] == "error") {
          // Handle error here
          print("Payment Error: ${event["message"]}");

          completer.complete(PaymentResult(
            isSuccess: false,
            responseCode: "02", // SDK error
          ));
        } else if (event["status"] == "event") {
          // Handle events here
          print("Payment Event: ${event["message"]}");

          // Handle cancellation event
          if (event["message"] == "Cancelled") {
            completer.complete(PaymentResult(
              isSuccess: false,
              responseCode: "99", // User cancelled
            ));
          }
        }
      });

      // Return the future that will complete when payment finishes
      return completer.future;
    } catch (e) {
      print("PayTabs SDK Error: $e");
      return PaymentResult(
        isSuccess: false,
        responseCode: "03", // SDK initialization error
      );
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/components/product/secondary_product_card.dart';
import 'package:shop/core/extensions/num_extensions.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/core/utils/alerts.dart';
import 'package:shop/features/Address/data/models/address_model.dart';
import 'package:shop/features/Address/presentation/controllers/address_controller.dart';
import 'package:shop/features/cart/presentation/controllers/cart_controller.dart';
import 'package:shop/features/cart/presentation/pages/my_cart_screen.dart';
import 'package:shop/features/check_out/data/models/payment_method_model.dart';
import 'package:shop/features/check_out/data/models/shipping_method_model.dart';
import 'package:shop/features/check_out/domain/entities/checkout_entity.dart';
import 'package:shop/features/check_out/presentation/controllers/checkout_controller.dart';
import 'package:shop/features/check_out/presentation/controllers/payment_methods_controller.dart';
// import 'package:shop/features/check_out/presentation/controllers/shipping_methods_controller.dart';
// import 'package:shop/features/check_out/presentation/pages/shipping_methods_screen.dart';
import 'package:week_day_picker/week_day_picker.dart';

import '../../../../generated/l10n.dart';

class CheckOutScreen extends ConsumerWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartState = ref.watch(cartControllerProvider);

    // Handle different cart states
    return cartState.when(
      loading: () => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      error: (error, stackTrace) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(S.of(context).error_loading_cart),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  ref.invalidate(cartControllerProvider);
                },
                child: Text(S.of(context).retry),
              ),
            ],
          ),
        ),
      ),
      data: (cartData) {
        // Check if cart is empty
        if (cartData.cartModel?.items?.isEmpty ?? true) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text(S.of(context).review_your_order),
              centerTitle: true,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.shopping_cart_outlined,
                    size: 64,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    S.of(context).your_cart_is_empty,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    S.of(context).add_products_before_checkout,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.grey,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate back to shopping
                      Navigator.of(context).pop();
                    },
                    child: Text(S.of(context).continue_shopping),
                  ),
                ],
              ),
            ),
          );
        }

        // Cart has items, show checkout screen
        return _buildCheckoutScreen(context, ref, cartData);
      },
    );
  }

  Widget _buildCheckoutScreen(
      BuildContext context, WidgetRef ref, dynamic cartData) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(S.of(context).review_your_order),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  ref.watch(addressControllerProvider).isLoading
                      ? Shimmer.fromColors(
                          baseColor: Colors.grey[300]!,
                          highlightColor: Colors.grey[100]!,
                          child: const LocationCardWidget(),
                        )
                      : () {
                          final addressState =
                              ref.watch(addressControllerProvider).requireValue;
                          final addressModel = addressState.shippingAddress ??
                              (addressState.addresses.isNotEmpty
                                  ? addressState.addresses.first
                                  : null);
                          return addressState.addresses.isEmpty
                              ? InkWell(
                                  onTap: () {
                                    NavigationService.push(
                                        Routes.createNewAddressScreen);
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: primaryMaterialColor,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Text(
                                      S.of(context).create_new_address,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(color: whileColor80),
                                    ),
                                  ),
                                )
                              : LocationCardWidget(
                                  isCheckout: true,
                                  addressModel: addressModel,
                                );
                        }(),
                  const SizedBox(
                    height: 10,
                  ),
                  ref.watch(addressControllerProvider).isLoading
                      ? Shimmer.fromColors(
                          baseColor: Colors.grey[300]!,
                          highlightColor: Colors.grey[100]!,
                          child: const LocationCardWidget(),
                        )
                      : () {
                          final addressState =
                              ref.watch(addressControllerProvider).requireValue;
                          if (addressState.shippingAddress ==
                              addressState.billingAddress) {
                            return const SizedBox();
                          }
                          final addressModel = addressState.billingAddress ??
                              (addressState.addresses.isNotEmpty
                                  ? addressState.addresses.first
                                  : null);
                          return LocationCardWidget(
                            isCheckout: true,
                            addressModel: addressModel,
                          );
                        }(),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Divider(
                color: Theme.of(context).hintColor.withOpacity(0.5),
              ),
              // Shipping method section hidden
              // SingleChildScrollView(
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text(S.of(context).choose_shipping_method,
              //           style: Theme.of(context).textTheme.titleSmall),
              //       const SizedBox(height: defaultPadding),
              //       ref.watch(shippingMethodsControllerProvider).when(
              //           data: (data) {
              //             return Column(
              //               children: data.shippingMethods.isEmpty
              //                   ? [
              //                       Image.asset(
              //                           "assets/Illustration/EmptyState_lightTheme.png"),
              //                       const SizedBox(
              //                         height: 10,
              //                       ),
              //                       Text(S
              //                           .of(context)
              //                           .no_shipping_methods_available)
              //                     ]
              //                   : List.generate(
              //                       data.shippingMethods.length,
              //                       (index) => ShippingMethodCardWidget(
              //                           shippingMethodModel:
              //                               data.shippingMethods[index])),
              //             );
              //           },
              //           error: (error, stackTrace) => Text(error.toString()),
              //           loading: () => Shimmer.fromColors(
              //               baseColor: Colors.grey[300]!,
              //               highlightColor: Colors.grey[100]!,
              //               child: Column(
              //                 children: List.generate(
              //                     2,
              //                     (index) => ShippingMethodCardWidget(
              //                             shippingMethodModel:
              //                                 ShippingMethodModel(
              //                           carrier: "Loading",
              //                           name: "ssdasd",
              //                           cost: 100,
              //                           description: "sdadsddssad",
              //                         ))),
              //               ))),
              //     ],
              //   ),
              // ),
              Divider(
                color: Theme.of(context).hintColor.withOpacity(0.5),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(S.of(context).payment_method,
                  style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(height: defaultPadding),
              ref.watch(paymentMethodsControllerProvider).when(
                    data: (data) {
                      return Column(
                        children: data.paymentMethods.isEmpty
                            ? [
                                Image.asset(
                                    "assets/Illustration/EmptyState_lightTheme.png"),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(S.of(context).no_payment_methods_available)
                              ]
                            : List.generate(
                                data.paymentMethods.length,
                                (index) => PaymentMethodCardWidget(
                                    paymentMethodModel:
                                        data.paymentMethods[index]),
                              ),
                      );
                    },
                    error: (error, stackTrace) => Text(error.toString()),
                    loading: () => Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Column(
                        children: List.generate(
                          2,
                          (index) => PaymentMethodCardWidget(
                            paymentMethodModel: PaymentMethodModel(
                              id: index,
                              name: "Loading",
                              type: "loading",
                              description: "loading payment method",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              Divider(
                color: Theme.of(context).hintColor.withOpacity(0.5),
              ),
              InkWell(
                onTap: () async {
                  var weekDayPicker = WeekDayPicker(
                    context: context,
                    initialDate: DateTime.now().add(const Duration(days: 5)),
                    firstDate: DateTime.now().add(const Duration(days: 4)),
                    lastDate: DateTime(2040, 10, 19),
                    colorHeader: primaryMaterialColor,
                    colorSelected: primaryColor,
                  );
                  DateTime? selectedDate = await weekDayPicker.show();

                  if (selectedDate != null) {
                    ref
                        .read(checkoutControllerProvider.notifier)
                        .selectDate(date: selectedDate);
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("assets/icons/Address.svg"),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(S.of(context).delivery_date)
                        ],
                      ),
                      Row(
                        children: [
                          if (ref
                                  .watch(checkoutControllerProvider)
                                  .requireValue
                                  .dateTime !=
                              null)
                            Text(
                                "${ref.watch(checkoutControllerProvider).requireValue.dateTime?.day}/${ref.watch(checkoutControllerProvider).requireValue.dateTime?.month}/${ref.watch(checkoutControllerProvider).requireValue.dateTime?.year}"),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 16,
                            color: Theme.of(context).hintColor,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                color: Theme.of(context).hintColor.withOpacity(0.5),
              ),
              const SizedBox(
                height: 16,
              ),
              PaymentSummaryWidget(
                total: cartData.cartModel?.total ?? 0,
                discount: cartData.cartModel?.discount ?? 0,
                shippingAmount: cartData.cartModel?.shippingAmount ?? 0,
                pormationAmount: cartData.cartModel?.promotionDiscount ?? 0,
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text(
                    S.of(context).review_the_products,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: cartData.cartModel?.items?.length ?? 0,
                itemBuilder: (context, index) {
                  final item = cartData.cartModel!.items![index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: SecondaryProductCard(
                      itemId: item.id ?? 0,
                      total: item.total ?? 0,
                      quantity: item.quantity ?? 0,
                      priceAfetDiscount: item.price ?? 0,
                      image: '${item.product?.thumbnail}',
                      brandName: item.product?.slug ?? "",
                      title: "${item.product?.name}",
                      price: item.regularPrice ?? 0,
                      unit: item.unit ?? '',
                      hasDiscount: item.product?.price?.hasDiscount ?? false,
                      onDelete: () {
                        ref
                            .read(cartControllerProvider.notifier)
                            .deleteItemFromCart(item.id ?? 0);
                      },
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 16,
              ),
              ConfirmButton(
                onConfirm: () {
                  // Check if user has addresses
                  final addressState =
                      ref.read(addressControllerProvider).requireValue;
                  if (addressState.addresses.isEmpty) {
                    Alerts.showSnackBar(
                        S.of(context).must_have_address_to_checkout,
                        alertsType: AlertsType.error);
                    return;
                  }

                  // Default shipping method since shipping method selection is hidden
                  final defaultShippingMethod = ShippingMethodModel(
                    carrier: "Default",
                    name: "Standard Shipping",
                    cost: 0,
                    description: "Standard shipping method",
                  );

                  final paymentMethod = ref
                      .read(paymentMethodsControllerProvider)
                      .requireValue
                      .selectedPaymentMethod;
                  final checkoutState =
                      ref.read(checkoutControllerProvider).requireValue;

                  if (paymentMethod == null) {
                    Alerts.showSnackBar(
                        S.of(context).please_select_payment_method,
                        alertsType: AlertsType.error);
                  } else if (checkoutState.dateTime == null) {
                    Alerts.showSnackBar(
                        S.of(context).please_select_delivery_date,
                        alertsType: AlertsType.error);
                  } else {
                    // Show confirmation dialog for payment methods
                    if (paymentMethod.type == 'card' ||
                        paymentMethod.type == 'credit') {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(S.of(context).payment_confirmation),
                            content: Text(paymentMethod.type == 'card'
                                ? S.of(context).payment_redirect_message
                                : S.of(context).credit_payment_confirmation),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text(S.of(context).cancel),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  ref
                                      .read(checkoutControllerProvider.notifier)
                                      .placeOrder(
                                        context: context,
                                        ref: ref,
                                        parameters: CheckoutEntity(
                                          shippingCarrirer:
                                              defaultShippingMethod.name,
                                          shippingAmount:
                                              defaultShippingMethod.cost ?? 0,
                                          deliveryDate:
                                              "${checkoutState.dateTime?.year}-0${checkoutState.dateTime?.month}-0${checkoutState.dateTime?.day}",
                                          shippingAddress: ref
                                              .read(addressControllerProvider)
                                              .requireValue
                                              .shippingAddress
                                              ?.line1
                                              .toString(),
                                          billingAddress: ref
                                              .read(addressControllerProvider)
                                              .requireValue
                                              .shippingAddress
                                              ?.line1
                                              .toString(),
                                          paymentMethod: paymentMethod.name,
                                          paymentType: paymentMethod.type,
                                        ),
                                      );
                                },
                                child: Text(paymentMethod.type == 'card'
                                    ? S.of(context).proceed_to_payment
                                    : S.of(context).confirm_credit_payment),
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      // For COD and other payment methods, proceed directly
                      ref.read(checkoutControllerProvider.notifier).placeOrder(
                            context: context,
                            ref: ref,
                            parameters: CheckoutEntity(
                              shippingCarrirer: defaultShippingMethod.name,
                              shippingAmount: defaultShippingMethod.cost ?? 0,
                              deliveryDate:
                                  "${checkoutState.dateTime?.year}-0${checkoutState.dateTime?.month}-0${checkoutState.dateTime?.day}",
                              shippingAddress: ref
                                  .read(addressControllerProvider)
                                  .requireValue
                                  .shippingAddress
                                  ?.line1
                                  .toString(),
                              billingAddress: ref
                                  .read(addressControllerProvider)
                                  .requireValue
                                  .shippingAddress
                                  ?.line1
                                  .toString(),
                              paymentMethod: paymentMethod.name,
                              paymentType: paymentMethod.type,
                              paymentStatus: paymentMethod.type == 'credit'
                                  ? 'paid'
                                  : 'awaiting_payment',
                            ),
                          );
                    }
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ConfirmButton extends ConsumerWidget {
  const ConfirmButton({super.key, required this.onConfirm});
  final Function()? onConfirm;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(checkoutControllerProvider);
    return InkWell(
      onTap: state.isLoading ? () {} : onConfirm,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: state.isLoading
              ? const CircularProgressIndicator(
                  color: Colors.white,
                )
              : Text(
                  S.of(context).confirm,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.white),
                ),
        ),
      ),
    );
  }
}

class LocationCardWidget extends ConsumerWidget {
  const LocationCardWidget({
    super.key,
    this.addressModel,
    this.isCheckout = false,
  });

  final AddressModel? addressModel;
  final bool? isCheckout;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(addressControllerProvider).requireValue;
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        if (state.addresses.isNotEmpty)
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                  color: state.shippingAddress?.id == addressModel?.id
                      ? primaryColor
                      : state.billingAddress?.id == addressModel?.id
                          ? successColor
                          : Theme.of(context).hintColor.withOpacity(0.5)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        AddressIconWidget(
                          isBillingAddress:
                              state.billingAddress?.id == addressModel?.id,
                          isShippingAddress:
                              state.shippingAddress?.id == addressModel?.id,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 180,
                          child: Text(
                            addressModel?.name ?? S.of(context).office,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        )
                      ],
                    ),
                    isCheckout ?? false
                        ? InkWell(
                            onTap: () {
                              NavigationService.push(Routes.addressScreen);
                            },
                            child: Text(
                              S.of(context).change_address,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(color: primaryColor),
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              NavigationService.push(Routes.updateAddressScreen,
                                  arguments: {"addressModel": addressModel});
                            },
                            child: const Icon(Icons.edit, color: primaryColor))
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          addressModel?.line1 ??
                              "8674 Thea Squares\nWatsicatown, VT 33351,Irbid, Jordan",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                    Container(
                      height: 62,
                      width: 62,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                            image: AssetImage("assets/images/location.png")),
                        border: Border.all(
                          color: Colors.grey.shade100,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        if (state.billingAddress?.id == addressModel?.id ||
            state.shippingAddress?.id == addressModel?.id)
          Container(
            height: 24,
            width: 130,
            decoration: BoxDecoration(
                color: state.shippingAddress?.id == addressModel?.id
                    ? primaryColor
                    : state.billingAddress?.id == addressModel?.id
                        ? successColor
                        : Colors.grey,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12))),
            child: Center(
              child: Text(
                (state.shippingAddress?.id == addressModel?.id &&
                        state.billingAddress?.id == addressModel?.id)
                    ? S.of(context).default_billing_shipping
                    : (state.shippingAddress?.id == addressModel?.id &&
                            state.billingAddress?.id != addressModel?.id)
                        ? S.of(context).default_shipping_address
                        : (state.billingAddress?.id == addressModel?.id &&
                                state.shippingAddress?.id != addressModel?.id)
                            ? S.of(context).default_billing_address
                            : "",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Colors.white, fontSize: 8),
              ),
            ),
          ),
      ],
    );
  }
}

class AddressIconWidget extends StatelessWidget {
  const AddressIconWidget(
      {super.key,
      this.isBillingAddress = false,
      this.isShippingAddress = false});
  final bool? isBillingAddress;
  final bool? isShippingAddress;

  @override

  /// A widget that displays an address icon.
  ///
  /// The icon is a gray circle with a white border. If [isDefault] is true, the
  /// border is green and a check icon is displayed in the top right corner.
  ///
  /// The icon is 42x42 in size and is centered both horizontally and vertically.
  ///
  /// The check icon is 16x16 in size and is centered both horizontally and
  /// vertically in the top right corner of the address icon.
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          height: 42,
          width: 42,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            shape: BoxShape.circle,
            border: Border.all(
              color: isBillingAddress ?? (false)
                  ? successColor
                  : isShippingAddress ?? (false)
                      ? primaryColor
                      : Colors.grey,
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/Address.svg",
                ),
              ]),
        ),
        Container(
          height: 16,
          width: 16,
          decoration: BoxDecoration(
            color: isBillingAddress ?? (false)
                ? successColor
                : isShippingAddress ?? (false)
                    ? primaryColor
                    : Colors.grey,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
            ),
          ),
          child: const Center(
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 10,
            ),
          ),
        )
      ],
    );
  }
}

class PaymentMethodCardWidget extends ConsumerWidget {
  const PaymentMethodCardWidget({
    super.key,
    required this.paymentMethodModel,
  });

  final PaymentMethodModel paymentMethodModel;

  String _getLocalizedPaymentMethodName(
      BuildContext context, PaymentMethodModel model) {
    switch (model.type) {
      case 'card':
        return S.of(context).credit_debit_card;
      case 'cod':
        return S.of(context).cash_on_delivery;
      case 'credit':
        return S.of(context).credit;
      default:
        return model.name ?? '';
    }
  }

  String _getLocalizedPaymentMethodDescription(
      BuildContext context, PaymentMethodModel model) {
    switch (model.type) {
      case 'card':
        return S.of(context).credit_debit_card_description;
      case 'cod':
        return S.of(context).cash_on_delivery_description;
      case 'credit':
        return S.of(context).credit_description;
      default:
        return model.description ?? '';
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected = ref
            .watch(paymentMethodsControllerProvider)
            .requireValue
            .selectedPaymentMethod ==
        paymentMethodModel;

    return InkWell(
      onTap: () {
        ref
            .read(paymentMethodsControllerProvider.notifier)
            .selectPaymentMethod(parameters: paymentMethodModel);
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected
                ? primaryColor
                : Theme.of(context).hintColor.withOpacity(0.3),
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: isSelected
                    ? primaryColor.withOpacity(0.1)
                    : Colors.grey.shade100,
                borderRadius: BorderRadius.circular(8),
              ),
              child: paymentMethodModel.icon != null
                  ? SvgPicture.asset(
                      paymentMethodModel.icon!,
                      width: 20,
                      height: 20,
                      fit: BoxFit.scaleDown,
                      colorFilter: ColorFilter.mode(
                        isSelected ? primaryColor : Colors.grey.shade600,
                        BlendMode.srcIn,
                      ),
                    )
                  : Icon(
                      paymentMethodModel.type == 'card'
                          ? Icons.credit_card
                          : paymentMethodModel.type == 'credit'
                              ? Icons.account_balance_wallet
                              : Icons.money,
                      color: isSelected ? primaryColor : Colors.grey.shade600,
                      size: 20,
                    ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _getLocalizedPaymentMethodName(context, paymentMethodModel),
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: isSelected ? primaryColor : Colors.black,
                          fontWeight:
                              isSelected ? FontWeight.bold : FontWeight.normal,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    _getLocalizedPaymentMethodDescription(
                        context, paymentMethodModel),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.grey.shade600,
                        ),
                  ),
                ],
              ),
            ),
            if (isSelected)
              const Icon(
                Icons.check_circle,
                color: primaryColor,
                size: 24,
              ),
          ],
        ),
      ),
    );
  }
}

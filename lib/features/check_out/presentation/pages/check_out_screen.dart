import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/components/product/secondary_product_card.dart';
import 'package:shop/core/extensions/num_extensions.dart';
import 'package:shop/features/cart/presentation/controllers/cart_controller.dart';
import 'package:shop/features/cart/presentation/pages/my_cart_screen.dart';
import 'package:shop/features/check_out/presentation/controllers/checkout_controller.dart';

class CheckOutScreen extends ConsumerWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Review Your Order"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const LocationCardWidget(),
              const SizedBox(
                height: 16,
              ),
              Divider(
                color: Theme.of(context).hintColor.withOpacity(0.5),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("assets/icons/Cash.svg"),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text("Payment Methods")
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                        color: Theme.of(context).hintColor,
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
                total: ref
                        .read(cartControllerProvider)
                        .requireValue
                        .cartModel
                        ?.total ??
                    0,
                discount: ref
                        .read(cartControllerProvider)
                        .requireValue
                        .cartModel
                        ?.discount ??
                    0,
                shippingAmount: ref
                        .read(cartControllerProvider)
                        .requireValue
                        .cartModel
                        ?.shippingAmount ??
                    0,
                pormationAmount: ref
                        .read(cartControllerProvider)
                        .requireValue
                        .cartModel
                        ?.promotionDiscount ??
                    0,
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text(
                    "Review the products",
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
                itemCount: ref
                        .read(cartControllerProvider)
                        .requireValue
                        .cartModel
                        ?.items
                        ?.length ??
                    0,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: SecondaryProductCard(
                        itemId: ref
                                .read(cartControllerProvider)
                                .requireValue
                                .cartModel
                                ?.items?[index]
                                .id ??
                            0,
                        total: ref
                                .read(cartControllerProvider)
                                .requireValue
                                .cartModel
                                ?.items?[index]
                                .total ??
                            0,
                        quantity: ref
                                .watch(cartControllerProvider)
                                .requireValue
                                .cartModel
                                ?.items?[index]
                                .quantity ??
                            0,
                        image:
                            '${ref.read(cartControllerProvider).requireValue.cartModel?.items?[index].product?.thumbnail}',
                        brandName: ref
                                .read(cartControllerProvider)
                                .requireValue
                                .cartModel
                                ?.items?[index]
                                .product
                                ?.slug ??
                            "",
                        title:
                            "${ref.read(cartControllerProvider).requireValue.cartModel?.items?[index].product?.name}",
                        price: ref
                                .read(cartControllerProvider)
                                .requireValue
                                .cartModel
                                ?.items?[index]
                                .product
                                ?.price
                                ?.afterDiscount ??
                            0),
                  );
                },
              ),
              const SizedBox(
                height: 16,
              ),
              ConfirmButton(
                onConfirm: () {
                  ref.read(checkoutControllerProvider.notifier).placeOrder();
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
                  "Confirm",
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

class LocationCardWidget extends StatelessWidget {
  const LocationCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Theme.of(context).hintColor.withOpacity(0.5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const AddressIconWidget(),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Office",
                style: Theme.of(context).textTheme.titleMedium,
              )
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
                    "8674 Thea Squares\nWatsicatown, VT 33351,Irbid, Jordan",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "+964 123456789",
                    style: Theme.of(context).textTheme.bodyMedium,
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
    );
  }
}

class AddressIconWidget extends StatelessWidget {
  const AddressIconWidget({
    super.key,
  });

  @override
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
              color: Colors.greenAccent,
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
            color: Colors.greenAccent,
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

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/components/product/secondary_product_card.dart';
import 'package:shop/core/extensions/num_extensions.dart';
import 'package:shop/core/resources/values_manager.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/features/cart/presentation/controllers/cart_controller.dart';
import 'package:shop/features/product/data/models/pormotion_model.dart';
import 'package:shop/features/product/presentation/controllers/pormotion_controller.dart';

class MyCartScreen extends ConsumerStatefulWidget {
  const MyCartScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends ConsumerState<MyCartScreen> {
  @override
  initState() {
    ref.read(cartControllerProvider.notifier).getMyCart();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ref.watch(cartControllerProvider).when(
            data: (data) => SingleChildScrollView(
              padding: EdgeInsets.all(16.h),
              child: data.cartModel?.items?.isEmpty ?? true
                  ? Column(
                      children: [
                        Image.asset(
                            "assets/Illustration/EmptyState_lightTheme.png"),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text("Empty Cart")
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 260.h,
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: data.cartModel?.items?.length ?? 0,
                            itemBuilder: (context, index) {
                              print(
                                  "Fofofofofo====>${data.cartModel?.items?[index].unit}");
                              return Padding(
                                  padding: EdgeInsets.only(bottom: 10.h),
                                  child: SecondaryProductCard(
                                    unit: data.cartModel?.items?[index].unit!,
                                    itemId:
                                        data.cartModel?.items?[index].id ?? 0,
                                    total: (data.cartModel!.items![index]
                                            .quantity! *
                                        (data.cartModel?.items?[index].price ??
                                            0)),
                                    quantity: data.cartModel?.items?[index]
                                            .quantity ??
                                        0,
                                    image:
                                        '${data.cartModel?.items?[index].product?.thumbnail}',
                                    brandName: data.cartModel?.items?[index]
                                            .product?.slug ??
                                        "",
                                    title:
                                        "${data.cartModel?.items?[index].product?.name}",
                                    priceAfetDiscount:
                                        (data.cartModel?.items?[index].price ??
                                            0),
                                    price: (data.cartModel?.items?[index]
                                            .regularPrice ??
                                        0),
                                    hasDiscount: data.cartModel?.items?[index]
                                        .product?.price?.hasDiscount,
                                  ));
                            },
                          ),
                        ),
                        // SizedBox(height: 16.h),
                        // Text(
                        //   "Have coupon?",
                        //   style: Theme.of(context).textTheme.titleMedium,
                        // ),
                        // const CouponWidget(),
                        SizedBox(height: 16.h),
                        PaymentSummaryWidget(
                          total: data.cartModel?.total ?? 0,
                          discount: data.cartModel?.discount ?? 0,
                          shippingAmount: data.cartModel?.shippingAmount ?? 0,
                          pormationAmount:
                              data.cartModel?.promotionDiscount ?? 0,
                        ),
                        SizedBox(height: 16.h),
                        InkWell(
                          onTap: () {
                            NavigationService.push(Routes.checkoutScreen);
                          },
                          child: Container(
                            width: deviceWidth,
                            padding: EdgeInsets.all(16.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              color: primaryColor,
                            ),
                            child: Text(
                              "Place Order",
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h),
                        ref.watch(pormotionControllerProvider).when(
                              data: (data) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if ((data.pormotions?.length ?? 0) > 0)
                                      Text("Pormotions",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium),
                                    Column(
                                      children: List.generate(
                                          data.pormotions?.length ?? 0,
                                          (index) => PormotionCardWidget(
                                              pormotionModel:
                                                  data.pormotions![index])),
                                    ),
                                  ],
                                );
                              },
                              error: (error, stackTrace) => Text("$error"),
                              loading: () => const Center(
                                  child: CircularProgressIndicator()),
                            )
                      ],
                    ),
            ),
            error: (error, stackTrace) => Column(
              children: [
                Image.asset("assets/Illustration/EmptyState_lightTheme.png"),
                const SizedBox(
                  height: 16,
                ),
                const Text("Empty Cart")
              ],
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
    );
  }
}

class CouponWidget extends StatelessWidget {
  const CouponWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 260.w,
          child: TextFormField(
            onSaved: (emal) {
              // Email
            },
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Enter your coupon code",
              prefixIcon: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
                child: SvgPicture.asset(
                  "assets/icons/Cash.svg",
                  height: 24,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                      Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .color!
                          .withOpacity(0.6),
                      BlendMode.srcIn),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 16.w,
        ),
        InkWell(
          onTap: () {},
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          child: Container(
            width: 70.w,
            padding: const EdgeInsets.all(defaultPadding * 0.75),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text("Add",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white)),
          ),
        ),
      ],
    );
  }
}

class PaymentSummaryWidget extends StatelessWidget {
  const PaymentSummaryWidget({
    super.key,
    required this.total,
    required this.discount,
    required this.shippingAmount,
    required this.pormationAmount,
  });

  final double total;
  final double discount;
  final double shippingAmount;
  final double pormationAmount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth,
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: Theme.of(context).hintColor.withOpacity(0.5),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Payment Summary",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: 6.h),
          PaymentInfoRow(
            title: "Sub Total",
            value: "${total - shippingAmount} JOD",
          ),
          SizedBox(height: 6.h),
          PaymentInfoRow(title: "Discount", value: "$discount JOD"),
          SizedBox(height: 6.h),
          PaymentInfoRow(title: "Delivery Fee", value: "$shippingAmount JOD"),
          SizedBox(height: 6.h),
          Divider(
              height: 1.h, color: Theme.of(context).hintColor.withOpacity(0.5)),
          SizedBox(height: 6.h),
          PaymentInfoRow(title: "Total", value: "$total JOD"),
        ],
      ),
    );
  }
}

class PaymentInfoRow extends StatelessWidget {
  const PaymentInfoRow({
    super.key,
    this.title,
    this.value,
  });

  final String? title;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title ?? "Sub Total",
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: Colors.grey.shade400),
        ),
        Text(
          value ?? "1600 EGP",
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: primaryColor,
              ),
        ),
      ],
    );
  }
}

class PormotionCardWidget extends StatelessWidget {
  final PormotionModel pormotionModel;

  const PormotionCardWidget({super.key, required this.pormotionModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: deviceWidth,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pormotionModel.name ?? '',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              if (pormotionModel.description != null)
                const SizedBox(height: 8.0),
              if (pormotionModel.description != null)
                Text(
                  pormotionModel.description ?? '',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              if (pormotionModel.minAmount != null)
                Text(
                  "Min amount: ${pormotionModel.minAmount ?? ''}",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              if (pormotionModel.minItems != null)
                Text(
                  "Min items: ${pormotionModel.minItems ?? ''}",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              const SizedBox(height: 8.0),
              pormotionModel.type == "percentage_discount"
                  ? Text(
                      'Discount: ${pormotionModel.discount}%',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  : Text(
                      'Discount: ${pormotionModel.discount} JOD',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

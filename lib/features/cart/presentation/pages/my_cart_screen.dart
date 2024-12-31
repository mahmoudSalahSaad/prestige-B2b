import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/components/product/secondary_product_card.dart';
import 'package:shop/core/extensions/num_extensions.dart';
import 'package:shop/core/resources/values_manager.dart';
import 'package:shop/features/cart/presentation/controllers/cart_controller.dart';

class MyCartScreen extends ConsumerWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ref.watch(cartControllerProvider).when(
            data: (data) => SingleChildScrollView(
              padding: EdgeInsets.all(16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 300.h,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: data.cartModel?.items?.length ?? 0,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: SecondaryProductCard(
                              total: data.cartModel?.items?[index].total ?? 0,
                              quantity:
                                  data.cartModel?.items?[index].quantity ?? 0,
                              image:
                                  '${data.cartModel?.items?[index].product?.thumbnail}',
                              brandName:
                                  data.cartModel?.items?[index].product?.slug ??
                                      "",
                              title:
                                  "${data.cartModel?.items?[index].product?.name}",
                              price: data.cartModel?.items?[index].product
                                      ?.price?.afterDiscount ??
                                  0),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    "Have coupon?",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const CouponWidget(),
                  SizedBox(height: 16.h),
                  PaymentSummaryWidget(
                    total: data.cartModel?.total ?? 0,
                    discount: data.cartModel?.discount ?? 0,
                    shippingAmount: data.cartModel?.shippingAmount ?? 0,
                    pormationAmount: data.cartModel?.promotionDiscount ?? 0,
                  )
                ],
              ),
            ),
            error: (error, stackTrace) => Text("$error"),
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
          color: Theme.of(context).hintColor,
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
          const PaymentInfoRow(),
          SizedBox(height: 6.h),
          PaymentInfoRow(title: "Discount", value: "$discount JOD"),
          SizedBox(height: 6.h),
          PaymentInfoRow(title: "Delivery Fee", value: "$shippingAmount JOD"),
          SizedBox(height: 6.h),
          Divider(height: 1.h, color: Theme.of(context).hintColor),
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
          style: Theme.of(context).textTheme.titleSmall,
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

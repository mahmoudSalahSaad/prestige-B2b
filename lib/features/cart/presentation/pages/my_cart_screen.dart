import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/components/product/secondary_product_card.dart';
import 'package:shop/core/extensions/num_extensions.dart';
import 'package:shop/core/resources/values_manager.dart';

class MyCartScreen extends ConsumerWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300.h,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: const SecondaryProductCard(
                        image:
                            'https://cdn.prod.website-files.com/64022de562115a8189fe542a/6616718fe4a871d7278a2037_Product-Concept-What-Is-It-And-How-Can-You-Best-Use-It.jpg',
                        brandName: "MAHMOUD SALAH PRODUCTS",
                        title: "products name",
                        price: 1600.0),
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
            const PaymentSummaryWidget()
          ],
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
  });

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
          const PaymentInfoRow(title: "VAT", value: "14% (150 EGP)"),
          SizedBox(height: 6.h),
          const PaymentInfoRow(title: "Delivery Fee", value: "200 EGP"),
          SizedBox(height: 6.h),
          Divider(height: 1.h, color: Theme.of(context).hintColor),
          SizedBox(height: 6.h),
          const PaymentInfoRow(title: "Total", value: "1950 EGP"),
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

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/core/controller/language_controller.dart';
import 'package:shop/core/extensions/num_extensions.dart';
import 'package:shop/features/cart/domain/entities/cart_entity.dart';
import 'package:shop/features/cart/presentation/controllers/add_item_to_cart_controller.dart';
import 'package:shop/features/cart/presentation/controllers/cart_controller.dart';
import 'package:shop/features/cart/presentation/controllers/remove_item_to_cart_controller.dart';

import '../../../constants.dart';
import '../network_image_with_loader.dart';

class SecondaryProductCard extends ConsumerWidget {
  final String unit;
  final int itemId;
  final double total;
  final int quantity;
  final String image;
  final String brandName;
  final String title;
  final double priceAfetDiscount;
  final double price;
  final bool? hasDiscount;
  final VoidCallback onDelete;

  const SecondaryProductCard({
    super.key,
    required this.unit,
    required this.itemId,
    required this.total,
    required this.quantity,
    required this.image,
    required this.brandName,
    required this.title,
    required this.priceAfetDiscount,
    required this.price,
    required this.hasDiscount,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
          minimumSize: Size(double.infinity, 120.h),
          side: BorderSide(color: Colors.grey.shade400),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultBorderRadious.r),
          ),
          padding: EdgeInsets.all(8.r)),
      child: Container(
        width: double.infinity,
        height: 120.h,
        padding: EdgeInsets.all(8.r),
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Product Image
                SizedBox(
                  width: 80.w,
                  height: 80.h,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(defaultBorderRadious.r),
                    child: NetworkImageWithLoader(
                      image,
                      radius: defaultBorderRadious.r,
                    ),
                  ),
                ),
                SizedBox(width: 12.w),

                // Content Section
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Top Row: Product Info + Quantity Controls
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Product Info
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Text(
                                //   brandName.toUpperCase(),
                                //   maxLines: 1,
                                //   overflow: TextOverflow.ellipsis,
                                //   style: Theme.of(context)
                                //       .textTheme
                                //       .bodyMedium!
                                //       .copyWith(
                                //         fontSize: 10.sp,
                                //         color: Colors.grey[600],
                                //       ),
                                // ),
                                SizedBox(height: 4.h),
                                Text(
                                  title,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(width: 8.w),

                          // Quantity Controls
                          if (priceAfetDiscount != 0)
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[50],
                                borderRadius: BorderRadius.circular(20.r),
                                border: Border.all(color: Colors.grey[300]!),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  InkWell(
                                    onTap: ref
                                            .watch(
                                                removeItemToCartControllerProvider(
                                                    itemId))
                                            .isLoading
                                        ? () {}
                                        : () => ref
                                            .read(
                                                removeItemToCartControllerProvider(
                                                        itemId)
                                                    .notifier)
                                            .removeItemFromCart(
                                                parameters: CartEntity(
                                                    quantity: 0,
                                                    productID: itemId)),
                                    child: Container(
                                      width: 28.w,
                                      height: 28.h,
                                      decoration: BoxDecoration(
                                        color: primaryMaterialColor.shade100,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: ref
                                                .watch(
                                                    removeItemToCartControllerProvider(
                                                        itemId))
                                                .isLoading
                                            ? SizedBox(
                                                width: 12.w,
                                                height: 12.h,
                                                child:
                                                    const CircularProgressIndicator(
                                                  color: Colors.black87,
                                                  strokeWidth: 2,
                                                ),
                                              )
                                            : Icon(Icons.remove,
                                                size: 16.r,
                                                color: Colors.black87),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12.w),
                                    child: Text(
                                      "$quantity",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: ref
                                            .watch(
                                                addItemToCartControllerProvider(
                                                    itemId))
                                            .isLoading
                                        ? () {}
                                        : () => ref
                                            .read(
                                                addItemToCartControllerProvider(
                                                        itemId)
                                                    .notifier)
                                            .addItemToCart(
                                                parameters: CartEntity(
                                                    quantity: 1,
                                                    productID: itemId)),
                                    child: Container(
                                      width: 28.w,
                                      height: 28.h,
                                      decoration: BoxDecoration(
                                        color: primaryMaterialColor.shade100,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: ref
                                                .watch(
                                                    addItemToCartControllerProvider(
                                                        itemId))
                                                .isLoading
                                            ? SizedBox(
                                                width: 12.w,
                                                height: 12.h,
                                                child:
                                                    const CircularProgressIndicator(
                                                  color: Colors.black87,
                                                  strokeWidth: 2,
                                                ),
                                              )
                                            : Icon(Icons.add,
                                                size: 16.r,
                                                color: Colors.black87),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),

                      SizedBox(height: 12.h),

                      // Bottom Row: Price + Total
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Price per unit
                          Expanded(
                            flex: 2,
                            child: priceAfetDiscount > price
                                ? RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "$priceAfetDiscount JOD",
                                          style: TextStyle(
                                            color: const Color(0xFF31B0D8),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                        TextSpan(
                                          text: " x $quantity $unit",
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontWeight: FontWeight.w500,
                                            fontSize: 11.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : Text(
                                    "$price JOD x $quantity $unit",
                                    style: TextStyle(
                                      color: const Color(0xFF31B0D8),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                          ),

                          // Total price
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.w,
                              vertical: 4.h,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFF31B0D8).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(6.r),
                            ),
                            child: Text(
                              "${total.toStringAsFixed(1)} JOD",
                              style: TextStyle(
                                color: const Color(0xFF31B0D8),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Delete button
            Positioned(
              top: 0,
              right:
                  ref.watch(languageControllerProvider).locale.languageCode ==
                          "ar"
                      ? 0
                      : 300.w,
              left: ref.watch(languageControllerProvider).locale.languageCode ==
                      "ar"
                  ? 300.w
                  : 0,
              child: Consumer(
                builder: (context, ref, child) {
                  final cartState = ref.watch(cartControllerProvider);
                  final isDeleting = cartState is AsyncLoading;

                  return GestureDetector(
                    onTap: isDeleting
                        ? null
                        : () {
                            print("Delete button tapped for item: $itemId");
                            onDelete();
                          },
                    child: Container(
                      width: 36.w,
                      height: 36.h,
                      decoration: BoxDecoration(
                        color: isDeleting ? Colors.grey[100] : Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                        border: Border.all(
                          color: isDeleting
                              ? Colors.grey.withOpacity(0.3)
                              : Colors.red.withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                      child: isDeleting
                          ? SizedBox(
                              width: 16.w,
                              height: 16.h,
                              child: const CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.grey,
                              ),
                            )
                          : Icon(
                              Icons.delete_outline,
                              color: Colors.red,
                              size: 20.r,
                            ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

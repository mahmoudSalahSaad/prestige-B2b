import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/features/cart/domain/entities/cart_entity.dart';
import 'package:shop/features/cart/presentation/controllers/add_item_to_cart_controller.dart';
import 'package:shop/features/cart/presentation/controllers/remove_item_to_cart_controller.dart';

import '../../../constants.dart';
import '../network_image_with_loader.dart';

class SecondaryProductCard extends ConsumerWidget {
  const SecondaryProductCard({
    super.key,
    required this.image,
    required this.brandName,
    required this.title,
    required this.price,
    required this.itemId,
    this.priceAfetDiscount,
    this.dicountpercent,
    this.press,
    this.style,
    required this.total,
    required this.quantity,
  });
  final String image, brandName, title;
  final double price;
  final double? priceAfetDiscount;
  final int? dicountpercent;
  final VoidCallback? press;

  final ButtonStyle? style;

  final double total;
  final int quantity;
  final int itemId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OutlinedButton(
      onPressed: () {},
      style: style ??
          OutlinedButton.styleFrom(
              minimumSize: const Size(256, 114),
              side: BorderSide(color: Colors.grey.shade400),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultBorderRadious),
                side: const BorderSide(color: Colors.red),
              ),
              maximumSize: const Size(256, 114),
              padding: const EdgeInsets.all(8)),
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1.15,
            child: Stack(
              children: [
                NetworkImageWithLoader(image, radius: defaultBorderRadious),
                if (dicountpercent != null)
                  Positioned(
                    right: defaultPadding / 2,
                    top: defaultPadding / 2,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding / 2),
                      height: 16,
                      decoration: const BoxDecoration(
                        color: errorColor,
                        borderRadius: BorderRadius.all(
                            Radius.circular(defaultBorderRadious)),
                      ),
                      child: Text(
                        "$dicountpercent% off",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
              ],
            ),
          ),
          const SizedBox(width: defaultPadding / 4),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            brandName.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontSize: 10),
                          ),
                          const SizedBox(height: defaultPadding / 2),
                          Text(
                            title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(fontSize: 12),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: ref
                                    .watch(
                                        addItemToCartControllerProvider(itemId))
                                    .isLoading
                                ? () {}
                                : () => ref
                                    .read(
                                        addItemToCartControllerProvider(itemId)
                                            .notifier)
                                    .addItemToCart(
                                        parameters: CartEntity(
                                            quantity: 0, productID: itemId)),
                            child: Container(
                              height: 24,
                              width: 24,
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: primaryMaterialColor.shade100,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: ref
                                        .watch(addItemToCartControllerProvider(
                                            itemId))
                                        .isLoading
                                    ? const CircularProgressIndicator(
                                        color: Colors.black87,
                                        strokeWidth: 2,
                                      )
                                    : const Icon(Icons.add, size: 16),
                              ),
                            ),
                          ),
                          const SizedBox(width: defaultPadding / 3),
                          Text("$quantity",
                              style: const TextStyle(fontSize: 12)),
                          const SizedBox(width: defaultPadding / 3),
                          InkWell(
                            onTap: ref
                                    .watch(removeItemToCartControllerProvider(
                                        itemId))
                                    .isLoading
                                ? () {}
                                : () => ref
                                    .read(removeItemToCartControllerProvider(
                                            itemId)
                                        .notifier)
                                    .removeItemFromCart(
                                        parameters: CartEntity(
                                            quantity: 0, productID: itemId)),
                            child: Container(
                              height: 24,
                              width: 24,
                              padding: const EdgeInsets.all(2),
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
                                    ? const CircularProgressIndicator(
                                        color: Colors.black87,
                                        strokeWidth: 2,
                                      )
                                    : const Icon(Icons.remove, size: 16),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "$price X $quantity",
                        style: const TextStyle(
                          color: Color(0xFF31B0D8),
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(width: defaultPadding / 4),
                      Text(
                        "Total: $total JOD",
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyMedium!.color,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

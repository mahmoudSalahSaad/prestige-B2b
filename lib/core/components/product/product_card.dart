import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../network_image_with_loader.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.image,
    required this.brandName,
    required this.title,
    required this.price,
    this.priceAfetDiscount,
    this.dicountpercent,
    required this.press,
    this.priceBeforeDiscount,
    required this.hasDiscount,
  });
  final String image, brandName, title;
  final double price;
  final String? priceAfetDiscount;
  final int? dicountpercent;
  final VoidCallback press;
  final double? priceBeforeDiscount;
  final bool hasDiscount;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => press(),
      style: OutlinedButton.styleFrom(
          minimumSize: const Size(140, 250),
          maximumSize: const Size(140, 250),
          side: BorderSide(color: Theme.of(context).hintColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultBorderRadious),
          ),
          padding: const EdgeInsets.all(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.15,
            child: Stack(
              children: [
                NetworkImageWithLoader(image, radius: defaultBorderRadious),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding / 2, vertical: defaultPadding / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    brandName.toUpperCase(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
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
                        .copyWith(fontSize: 12, height: 1.1),
                  ),
                  const Spacer(),
                  hasDiscount
                      ? Row(
                          children: [
                            Text(
                              "$priceAfetDiscount",
                              style: const TextStyle(
                                color: Color(0xFF31B0D8),
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(width: defaultPadding / 4),
                            if (hasDiscount)
                              Text(
                                price.toString(),
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .color,
                                  fontSize: 9,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                          ],
                        )
                      : Text(
                          "$price",
                          style: const TextStyle(
                            color: Color(0xFF31B0D8),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

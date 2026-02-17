import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../generated/l10n.dart';

class UnitPrice extends StatelessWidget {
  const UnitPrice({
    super.key,
    required this.price,
    this.priceAfterDiscount,
  });

  final double price;
  final double? priceAfterDiscount;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).unit_price,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: defaultPadding / 1),
        Text.rich(
          TextSpan(
            text: (priceAfterDiscount == null ||
                    priceAfterDiscount == 0 ||
                    (priceAfterDiscount != null && priceAfterDiscount! >= price))
                ? "${price.toStringAsFixed(2)} JOD"
                : "${priceAfterDiscount!.toStringAsFixed(2)} JOD",
            style: Theme.of(context).textTheme.titleLarge,
            children: [
              // Only show strikethrough price when there's a valid discount
              // (priceAfterDiscount is not null, > 0, and less than original price)
              if (priceAfterDiscount != null &&
                  priceAfterDiscount! > 0 &&
                  price > 0 &&
                  price > priceAfterDiscount!)
                TextSpan(
                  text: " ${price.toStringAsFixed(2)} JOD",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).textTheme.bodyMedium!.color,
                      decoration: TextDecoration.lineThrough),
                ),
            ],
          ),
        )
      ],
    );
  }
}

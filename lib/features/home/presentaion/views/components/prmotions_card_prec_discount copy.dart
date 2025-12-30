import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/core/resources/color.dart';
import 'package:shop/core/utils/date/date_utils.dart';
import 'package:shop/features/home/data/models/promotions_model.dart';

class PrmotionsCardAmountDiscount extends ConsumerStatefulWidget {
  const PrmotionsCardAmountDiscount({super.key, required this.promotions});
  final Promotions promotions;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PrmotionsCardAmountDiscountState();
}

class _PrmotionsCardAmountDiscountState
    extends ConsumerState<PrmotionsCardAmountDiscount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: primaryColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(
                  widget.promotions.imageUrl ??
                      "https://example.com/default_image.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            widget.promotions.name ?? "",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "DIscount: ${widget.promotions.discount}",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                "Min Amount ${widget.promotions.maxAmount}",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 2),
          Text(
            "End at ${DateTime.parse("${widget.promotions.endDate}").toAppDate()}",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

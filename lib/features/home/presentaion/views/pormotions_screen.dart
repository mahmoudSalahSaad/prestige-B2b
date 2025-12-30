import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shop/constants.dart';
import 'package:shop/features/home/presentaion/controllers/promotions_static_page_controller.dart';
import 'package:shop/features/home/presentaion/views/components/best_sellers.dart';
import 'package:shop/features/home/presentaion/views/components/prmotions_card_prec_discount%20copy.dart';
import 'package:shop/features/home/presentaion/views/components/prmotions_card_prec_discount.dart';
import 'package:shop/features/home/presentaion/views/components/prmotions_card_xy_offer.dart';
import 'package:shop/generated/l10n.dart';

import 'components/prmotions_card_item_discount.dart';

class PormotionsScreen extends ConsumerStatefulWidget {
  const PormotionsScreen({super.key});

  @override
/*************  ✨ Windsurf Command ⭐  *************/
  /// {@macro consumer_state}
  ///
  /// *****  dfb964e4-924f-4a8b-9e26-1c2a38e5a60c  ******
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PormotionsScreenState();
}

class _PormotionsScreenState extends ConsumerState<PormotionsScreen> {
  @override
  Widget build(BuildContext context) {
    return LiquidPullToRefresh(
      onRefresh: () async {
        await ref
            .read(promotionsStaticPageControllerProvider(0).notifier)
            .getPromotions();
      },
      color: primaryColor.withOpacity(0.5),
      height: 50,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).pormotions,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ref.watch(promotionsStaticPageControllerProvider(0)).when(
                  data: (data) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Use a more stable layout instead of problematic Wrap
                        LayoutBuilder(
                          builder: (context, constraints) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: data.promtions!.sections!.promotions!
                                  .map((promotion) {
                                Widget card;
                                switch (promotion.type) {
                                  case "buyxgety":
                                    card = PrmotionsCardXYOFFER(
                                        promotions: promotion);
                                    break;
                                  case "item_discount":
                                    card = PrmotionsCardItemDiscount(
                                        promotions: promotion);
                                    break;
                                  case "percentage_discount":
                                    card = PrmotionsCardPrecDiscount(
                                        promotions: promotion);
                                    break;
                                  default:
                                    card = PrmotionsCardAmountDiscount(
                                        promotions: promotion);
                                    break;
                                }
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: card,
                                );
                              }).toList(),
                            );
                          },
                        ),
                        const SizedBox(height: 16),
                        BestSellers(
                          deals: data.promtions?.sections?.deals,
                        )
                      ],
                    );
                  },
                  error: (error, stck) => Text("$error"),
                  loading: () => Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        int crossAxisCount =
                            (constraints.maxWidth / 200).floor();
                        return GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: crossAxisCount,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                            childAspectRatio: .70,
                          ),
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
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
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: const DecorationImage(
                                        image: NetworkImage(
                                          "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    S.of(context).promotion_title,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    S.of(context).promotion_description,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    S.of(context).promotion_description,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    S.of(context).end_date,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                          height: 44,
                                          width: 70,
                                          child: TextField()),
                                      const Spacer(),
                                      InkWell(
                                        child: Container(
                                          height: 44,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Center(
                                            child: Text(
                                              S.of(context).buy,
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}

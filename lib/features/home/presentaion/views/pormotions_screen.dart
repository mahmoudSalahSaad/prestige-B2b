import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:shop/constants.dart';
import 'package:shop/features/home/presentaion/controllers/promotions_static_page_controller.dart';
import 'package:shop/features/home/presentaion/views/components/best_sellers.dart';
import 'package:shop/features/home/presentaion/views/components/prmotions_card_prec_discount%20copy.dart';
import 'package:shop/features/home/presentaion/views/components/prmotions_card_prec_discount.dart';
import 'package:shop/features/home/presentaion/views/components/prmotions_card_xy_offer.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
            const Text(
              "Pormotions",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ref.watch(promotionsStaticPageControllerProvider(0)).when(
                  data: (data) {
                    return Column(
                      children: [
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                            childAspectRatio: .63,
                          ),
                          itemCount:
                              data.promtions!.sections!.promotions!.length,
                          itemBuilder: (context, index) {
                            return data.promtions!.sections!.promotions![index]
                                        .type ==
                                    "buyxgety"
                                ? PrmotionsCardXYOFFER(
                                    promotions: data.promtions!.sections!
                                        .promotions![index],
                                  )
                                : data.promtions!.sections!.promotions![index]
                                            .type ==
                                        "item_discount"
                                    ? PrmotionsCardItemDiscount(
                                        promotions: data.promtions!.sections!
                                            .promotions![index],
                                      )
                                    : data.promtions!.sections!
                                                .promotions![index].type ==
                                            "percentage_discount"
                                        ? PrmotionsCardPrecDiscount(
                                            promotions: data.promtions!
                                                .sections!.promotions![index],
                                          )
                                        : PrmotionsCardAmountDiscount(
                                            promotions: data.promtions!
                                                .sections!.promotions![index],
                                          );
                          },
                        ),
                        BestSellers(
                          deals: data.promtions?.sections?.deals,
                        )
                      ],
                    );
                  },
                  error: (error, stck) => Text("$error"),
                  loading: () => Skeletonizer(
                    enabled: true,
                    containersColor: const Color(0xffe5e5e5),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
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
                                height: 120,
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
                              const Text(
                                "Promotion Title",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                "Promotion Description",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                "Promotion Description2",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                "End Date",
                                style: TextStyle(
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
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "Buy",
                                          style: TextStyle(
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
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}

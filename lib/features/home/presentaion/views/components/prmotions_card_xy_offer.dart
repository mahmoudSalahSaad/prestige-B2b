import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/core/resources/color.dart';
import 'package:shop/core/utils/date/date_utils.dart';
import 'package:shop/features/home/data/models/promotions_model.dart';
import 'package:shop/features/home/presentaion/controllers/promotions_static_page_controller.dart';

class PrmotionsCardXYOFFER extends ConsumerStatefulWidget {
  const PrmotionsCardXYOFFER({super.key, required this.promotions});
  final Promotions promotions;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PrmotionsCardXYOFFERState();
}

class _PrmotionsCardXYOFFERState extends ConsumerState<PrmotionsCardXYOFFER> {
  final TextEditingController _textEditingController =
      TextEditingController(text: 1.toString());

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          if (widget.promotions.description != null)
            Text(
              widget.promotions.description ?? "",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          const SizedBox(height: 4),
          Text(
            "Buy ${widget.promotions.xyOffer?.buyQuantity} ${widget.promotions.xyOffer?.buyProduct} and get ${widget.promotions.xyOffer?.getProduct}",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            "End at ${DateTime.parse("${widget.promotions.endDate}").toAppDate()}",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Form(
                  key: _formKey,
                  child: SizedBox(
                      height: 38,
                      width: 70,
                      child: TextFormField(
                        controller: _textEditingController,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: const InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                        ),
                      ))),
              const Spacer(),
              GestureDetector(
                onTap: ref
                        .watch(promotionsStaticPageControllerProvider(
                            widget.promotions.id!))
                        .isLoading
                    ? () {}
                    : () {
                        if (_formKey.currentState!.validate()) {
                          ref
                              .read(promotionsStaticPageControllerProvider(
                                      widget.promotions.id!)
                                  .notifier)
                              .addToCart(
                                int.parse(_textEditingController.text),
                                widget.promotions.id!,
                              );
                          // Handle the buy action
                        }
                      },
                child: Container(
                  height: 38,
                  width: 80,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: ref
                            .watch(promotionsStaticPageControllerProvider(
                                widget.promotions.id!))
                            .isLoading
                        ? const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 35),
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          )
                        : const Text(
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
  }
}

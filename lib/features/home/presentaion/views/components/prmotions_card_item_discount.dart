import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/core/resources/color.dart';
import 'package:shop/core/utils/date/date_utils.dart';
import 'package:shop/features/home/data/models/promotions_model.dart';
import 'package:shop/features/home/presentaion/controllers/promotions_static_page_controller.dart';
import 'package:shop/generated/l10n.dart';

class PrmotionsCardItemDiscount extends ConsumerStatefulWidget {
  const PrmotionsCardItemDiscount({super.key, required this.promotions});
  final Promotions promotions;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PrmotionsCardItemDiscountState();
}

class _PrmotionsCardItemDiscountState
    extends ConsumerState<PrmotionsCardItemDiscount> {
  final TextEditingController _textEditingController =
      TextEditingController(text: 1.toString());

  final _formKey = GlobalKey<FormState>();

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
          const SizedBox(height: 4),
          Text(
            widget.promotions.name ?? "",
            maxLines: 31,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 2),
          if (widget.promotions.description != null)
            Text(
              widget.promotions.description ?? "",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          const SizedBox(height: 2),
          Row(
            children: [
              Text(
                "${widget.promotions.price?.afterDiscount}",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                "${widget.promotions.price?.beforeDiscount}",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12,
                  decoration: TextDecoration.lineThrough,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 2),
          Text(
            "${S.of(context).end_at} ${DateTime.parse("${widget.promotions.endDate}").toAppDate()}",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Row(
            children: [
              Form(
                  key: _formKey,
                  child: SizedBox(
                      height: 38,
                      width: 40,
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
              Text("${widget.promotions.unit}",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  )),
              const Spacer(),
              GestureDetector(
                onTap: ref
                        .watch(promotionsStaticPageControllerProvider(0))
                        .maybeWhen(
                          data: (data) => data.isLoading,
                          orElse: () => false,
                        )
                    ? () {}
                    : () {
                        if (_formKey.currentState!.validate()) {
                          ref
                              .read(promotionsStaticPageControllerProvider(0)
                                  .notifier)
                              .addToCart(
                                int.parse(_textEditingController.text),
                                widget.promotions.id!,
                              );
                        }
                      },
                child: Container(
                  height: 38,
                  width: 38,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: ref
                            .watch(promotionsStaticPageControllerProvider(0))
                            .maybeWhen(
                              data: (data) => data.isLoading,
                              orElse: () => false,
                            )
                        ? const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10),
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          )
                        : const Icon(Icons.shopping_cart_outlined,
                            color: Colors.white, size: 20),
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

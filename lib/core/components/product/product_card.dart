import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/core/components/network_image_with_loader.dart';
import 'package:shop/features/cart/domain/entities/cart_entity.dart';
import 'package:shop/features/cart/presentation/controllers/cart_controller.dart';
import 'package:shop/features/product/data/models/item_details_model.dart';
import 'package:shop/generated/l10n.dart';

import '../../../constants.dart';

class ProductCard extends ConsumerStatefulWidget {
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
    this.productId,
    this.variations,
    this.onAddToCart,
  });
  final String image, brandName, title;
  final double price;
  final String? priceAfetDiscount;
  final int? dicountpercent;
  final VoidCallback press;
  final double? priceBeforeDiscount;
  final bool hasDiscount;
  final int? productId;
  final List<VariationModel>? variations;
  final Function(int quantity, String unit)? onAddToCart;

  @override
  ConsumerState<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends ConsumerState<ProductCard> {
  String selectedUnit = 'piece'; // Default unit (piece)
  int quantity = 1;
  bool isAddingToCart = false;
  VariationModel? selectedVariation;
  double? currentPrice;
  double? currentDiscountPrice;

  @override
  void initState() {
    super.initState();
    // Initialize with first variation if available
    if (widget.variations != null && widget.variations!.isNotEmpty) {
      selectedVariation = widget.variations!.first;
      currentPrice = selectedVariation!.price;
      currentDiscountPrice = selectedVariation!.discountPrice;
    } else {
      currentPrice = widget.price;
      currentDiscountPrice = widget.priceAfetDiscount != null
          ? double.tryParse(widget.priceAfetDiscount!)
          : null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => widget.press(),
      style: OutlinedButton.styleFrom(
          minimumSize: const Size(140, 250),
          maximumSize: const Size(140, 250),
          shadowColor: Colors.black.withOpacity(0.5),
          elevation: 10,
          backgroundColor: Colors.white,
          side: BorderSide(color: Theme.of(context).hintColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
          padding: const EdgeInsets.all(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(22),
                  topRight: Radius.circular(22),
                ),
                border: Border.all(color: Colors.grey.shade300),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 0),
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: NetworkImageWithLoader(widget.image,
                  radius: 0, fit: BoxFit.contain),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // r,
                const SizedBox(height: defaultPadding / 2),
                Text(
                  widget.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontSize: 12, height: 1.1),
                ),
                const Spacer(),
                Builder(
                  builder: (context) {
                    // Calculate total price based on quantity
                    final unitPrice = currentPrice ?? 0.0;
                    final unitDiscountPrice = currentDiscountPrice;
                    final totalPrice = unitPrice * quantity;
                    final totalDiscountPrice =
                        unitDiscountPrice != null && unitDiscountPrice > 0
                            ? unitDiscountPrice * quantity
                            : null;

                    return (totalDiscountPrice != null &&
                            totalDiscountPrice > 0)
                        ? Row(
                            children: [
                              Text(
                                "${totalDiscountPrice.toStringAsFixed(2)} JOD",
                                style: const TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 10,
                                ),
                              ),
                              const SizedBox(width: defaultPadding / 4),
                              Text(
                                "${totalPrice.toStringAsFixed(2)} JOD",
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .color,
                                  fontSize: 7,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          )
                        : Text(
                            "${totalPrice.toStringAsFixed(2)} JOD",
                            style: const TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.w900,
                              fontSize: 10,
                            ),
                          );
                  },
                ),
                const Spacer(),
                // Show variations if available, otherwise show unit switcher
                if (widget.variations != null && widget.variations!.isNotEmpty)
                  Container(
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          for (int i = 0;
                              i < widget.variations!.length;
                              i++) ...[
                            if (i > 0)
                              Container(
                                width: 1,
                                height: 12,
                                color: Colors.grey[300],
                              ),
                            _buildVariationButton(widget.variations![i]),
                          ],
                        ],
                      ),
                    ),
                  )
                else
                  /* Container(
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildUnitButton('piece', S.of(context).unit_piece),
                        Container(
                          width: 1,
                          height: 12,
                          color: Colors.grey[300],
                        ),
                        _buildUnitButton('bag', S.of(context).unit_bag),
                      ],
                    ),
                  ) */
                  const SizedBox.shrink(),
                const SizedBox(height: 3),
                // Quantity Controls and Add to Cart
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Quantity Controls
                    Container(
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey[300]!),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          InkWell(
                            onTap: () {
                              if (quantity > 1) {
                                setState(() {
                                  quantity--;
                                });
                              }
                            },
                            child: Container(
                              width: 24,
                              height: 24,
                              alignment: Alignment.center,
                              child: const Icon(
                                Icons.remove,
                                size: 12,
                                color: primaryColor,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              quantity.toString(),
                              style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                quantity++;
                              });
                            },
                            child: Container(
                              width: 20,
                              height: 28,
                              alignment: Alignment.center,
                              child: const Icon(
                                Icons.add,
                                size: 12,
                                color: primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Add to Cart Button
                    InkWell(
                      onTap: isAddingToCart
                          ? null
                          : () async {
                              if (widget.productId == null) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(S.of(context).error),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                                return;
                              }

                              final unitText = selectedUnit == 'piece'
                                  ? S.of(context).unit_piece
                                  : S.of(context).unit_bag;

                              setState(() {
                                isAddingToCart = true;
                              });

                              try {
                                // Call the custom callback if provided
                                widget.onAddToCart
                                    ?.call(quantity, selectedUnit);

                                // Add to cart using CartController
                                await ref
                                    .read(cartControllerProvider.notifier)
                                    .addToCart(
                                      CartEntity(
                                        productID: widget.productId!,
                                        quantity: quantity,
                                        variationID: selectedVariation?.id,
                                        priceID:
                                            selectedVariation?.productPriceId,
                                        unitID: selectedVariation?.unitId,
                                      ),
                                    );

                                if (mounted) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(S
                                          .of(context)
                                          .added_quantity_to_cart(
                                              quantity.toString(), unitText)),
                                      duration: const Duration(seconds: 1),
                                      backgroundColor: Colors.green,
                                    ),
                                  );
                                }
                              } catch (e) {
                                if (mounted) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                          '${S.of(context).failed_to_add_to_cart}: $e'),
                                      backgroundColor: Colors.red,
                                    ),
                                  );
                                }
                              } finally {
                                if (mounted) {
                                  setState(() {
                                    isAddingToCart = false;
                                  });
                                }
                              }
                            },
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: isAddingToCart ? Colors.grey : primaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: isAddingToCart
                            ? const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                  strokeWidth: 2,
                                ),
                              )
                            : const Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.white,
                                size: 16,
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
    );
  }

  Widget _buildUnitButton(String unitKey, String displayText) {
    final bool isSelected = selectedUnit == unitKey;
    return InkWell(
      onTap: () {
        setState(() {
          selectedUnit = unitKey;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
        decoration: BoxDecoration(
          color: isSelected ? primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          displayText,
          style: TextStyle(
            fontSize: 10,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
            color: isSelected ? Colors.white : Colors.black87,
          ),
        ),
      ),
    );
  }

  Widget _buildVariationButton(VariationModel variation) {
    final bool isSelected = selectedVariation?.id == variation.id;
    return InkWell(
      onTap: () {
        print('Variation tapped: ${variation.name}');
        print(
            'Price: ${variation.price}, Discount: ${variation.discountPrice}');
        setState(() {
          selectedVariation = variation;
          currentPrice = variation.price;
          currentDiscountPrice = variation.discountPrice;
        });
        print(
            'Updated currentPrice: $currentPrice, currentDiscountPrice: $currentDiscountPrice');
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        decoration: BoxDecoration(
          color: isSelected ? primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          variation.name ?? variation.options ?? '',
          style: TextStyle(
            fontSize: 9,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
            color: isSelected ? Colors.white : Colors.black87,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}

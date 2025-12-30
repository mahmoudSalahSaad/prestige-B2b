import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/generated/l10n.dart';

import '../../../../../constants.dart';

class ProductQuantity extends StatefulWidget {
  const ProductQuantity({
    super.key,
    required this.numOfItem,
    required this.onIncrement,
    required this.onDecrement,
    required this.onQuantityChanged,
  });

  final int numOfItem;
  final VoidCallback onIncrement, onDecrement;
  final ValueChanged<int> onQuantityChanged;

  @override
  State<ProductQuantity> createState() => _ProductQuantityState();
}

class _ProductQuantityState extends State<ProductQuantity> {
  late TextEditingController _quantityController;
  bool _isEditingText = false;

  @override
  void initState() {
    super.initState();
    _quantityController =
        TextEditingController(text: widget.numOfItem.toString());
  }

  @override
  void didUpdateWidget(ProductQuantity oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.numOfItem != oldWidget.numOfItem && !_isEditingText) {
      _quantityController.text = widget.numOfItem.toString();
    }
  }

  @override
  void dispose() {
    _quantityController.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    final text = _quantityController.text;
    if (text.isNotEmpty) {
      final quantity = int.tryParse(text);
      if (quantity != null && quantity > 0 && quantity != widget.numOfItem) {
        widget.onQuantityChanged(quantity);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          S.of(context).quantity,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: defaultPadding),
        Row(
          children: [
            // Decrement button
            SizedBox(
              height: 40,
              width: 40,
              child: OutlinedButton(
                onPressed: widget.onDecrement,
                style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.all(defaultPadding / 2)),
                child: SvgPicture.asset(
                  "assets/icons/Minus.svg",
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
            ),
            const SizedBox(width: defaultPadding / 2),
            // Text field for manual quantity input
            SizedBox(
              width: 120,
              height: 40,
              child: TextField(
                controller: _quantityController,
                textAlign: TextAlign.center,
                onTapOutside: (event) {
                  setState(() {
                    _isEditingText = false;
                  });
                  _onTextChanged();
                  FocusScope.of(context).unfocus();
                },
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(horizontal: 8),
                ),
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.w500),
                onTap: () {
                  setState(() {
                    _isEditingText = true;
                  });
                  _quantityController.selection = TextSelection(
                    baseOffset: 0,
                    extentOffset: _quantityController.text.length,
                  );
                },
                onChanged: (value) {
                  _isEditingText = true;
                },
                onSubmitted: (value) {
                  setState(() {
                    _isEditingText = false;
                  });
                  _onTextChanged();
                },
                onEditingComplete: () {
                  setState(() {
                    _isEditingText = false;
                  });
                  _onTextChanged();
                },
              ),
            ),
            const SizedBox(width: defaultPadding / 2),
            // Increment button
            SizedBox(
              height: 40,
              width: 40,
              child: OutlinedButton(
                onPressed: widget.onIncrement,
                style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.all(defaultPadding / 2)),
                child: SvgPicture.asset(
                  "assets/icons/Plus1.svg",
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shop/core/resources/resources.dart';
import 'package:shop/features/check_out/data/models/order_model.dart';
import 'package:shop/features/orders/presentation/controllers/my_orders_controller.dart';

import '../../../../generated/l10n.dart';

class MyOrdersScreen extends ConsumerWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(S.of(context).my_orders),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: ref.watch(myOrdersControllerProvider).when(
                      data: (data) => List.generate(
                          data.orders?.items?.length ?? 0,
                          (index) => Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: OrderItemWidget(
                                  orderModel: data.orders?.items?[index],
                                ),
                              )),
                      error: (error, stackTrace) => [Text(error.toString())],
                      loading: () => List.generate(
                          10,
                          (index) => Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: const Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                                child: OrderItemWidget(),
                              )))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OrderItemWidget extends StatelessWidget {
  const OrderItemWidget({
    super.key,
    this.orderModel,
  });
  final OrderModel? orderModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white70,
        border: Border.all(
          color: Theme.of(context).hintColor.withOpacity(0.5),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StatusRowWidget(
            status: orderModel?.status,
          ),
          const SizedBox(height: 10),
          PaymentStatusRowWidget(
            paymentStatus: orderModel?.paymentStatus,
            paidAt: orderModel?.paidAt,
          ),
          const SizedBox(height: 10),
          Column(
            children: List.generate(
                orderModel?.items?.length ?? 0,
                (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${orderModel?.items?[index].name}"),
                          Text(
                              "${orderModel?.items?[index].price} JOD x ${orderModel?.items?[index].quantity}")
                        ],
                      ),
                    )),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 320, child: Text("${orderModel?.billingAddress}"))
            ],
          ),
        ],
      ),
    );
  }
}

class StatusRowWidget extends StatelessWidget {
  const StatusRowWidget({
    super.key,
    this.status,
  });
  final String? status;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(S.of(context).status),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            "$status",
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: Colors.white),
          ),
        )
      ],
    );
  }
}

class PaymentStatusRowWidget extends StatelessWidget {
  const PaymentStatusRowWidget({
    super.key,
    this.paymentStatus,
    this.paidAt,
  });

  final String? paymentStatus;
  final String? paidAt;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Payment Status Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Payment Status"),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: _getPaymentStatusColor(paymentStatus),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                _getPaymentStatusText(paymentStatus),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
        const SizedBox(height: 8),

        // Paid At Row (only show if payment was successful)
        if (paymentStatus == 'paid' && paidAt != null && paidAt!.isNotEmpty)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Paid At"),
              Text(
                _formatPaidDate(paidAt!),
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.grey[600]),
              ),
            ],
          ),
      ],
    );
  }

  Color _getPaymentStatusColor(String? status) {
    switch (status?.toLowerCase()) {
      case 'paid':
        return Colors.green;
      case 'awaiting_payment':
        return Colors.orange;
      case 'failed':
        return Colors.red;
      case 'cancelled':
        return Colors.grey;
      default:
        return Colors.grey;
    }
  }

  String _getPaymentStatusText(String? status) {
    switch (status?.toLowerCase()) {
      case 'paid':
        return 'Paid';
      case 'awaiting_payment':
        return 'Pending';
      case 'failed':
        return 'Failed';
      case 'cancelled':
        return 'Cancelled';
      default:
        return status ?? 'Unknown';
    }
  }

  String _formatPaidDate(String paidAt) {
    try {
      // Assuming the date comes in ISO format or similar
      // You can customize this formatting based on your API response format
      final dateTime = DateTime.parse(paidAt);
      return '${dateTime.day}/${dateTime.month}/${dateTime.year} ${dateTime.hour}:${dateTime.minute.toString().padLeft(2, '0')}';
    } catch (e) {
      // If parsing fails, return the original string
      return paidAt;
    }
  }
}

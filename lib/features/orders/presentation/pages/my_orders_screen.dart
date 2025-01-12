import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/core/resources/resources.dart';
import 'package:shop/features/check_out/data/models/order_model.dart';
import 'package:shop/features/orders/presentation/controllers/my_orders_controller.dart';
import 'package:shop/screens/search/views/components/search_form.dart';
import 'package:skeletonizer/skeletonizer.dart';

class MyOrdersScreen extends ConsumerWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("My Orders"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SearchForm(),
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
                          (index) => const Skeletonizer(
                              enabled: true,
                              child: Padding(
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
          Column(
            children: List.generate(
                orderModel?.items?.length ?? 0,
                (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              "Order #${orderModel?.id ?? 0}: ${orderModel?.items?[index].name}"),
                          Text(
                              "${orderModel?.items?[index].price} JOD x ${orderModel?.items?[index].quantity}")
                        ],
                      ),
                    )),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("${orderModel?.billingAddress}")],
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
        const Text("status"),
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

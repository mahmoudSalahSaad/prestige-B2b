import 'package:flutter/material.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/services/network/network_client.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  bool isLoading = false;
  @override
  initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
      await getPrivercyPolicy();
    });
  }

  String privercyPolicy = '';
  getPrivercyPolicy() async {
    setState(() {
      isLoading = true;
    });
    final NetworkClient networkClient = getIt();
    final result = await networkClient.call(
      data: {},
      url: '/pages/privacy-policy',
      type: NetworkCallType.post,
    );

    privercyPolicy = result.fold((l) => '', (r) {
      return r.data['content'];
    });

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.all(16),
              child: Text(privercyPolicy),
            ),
    );
  }
}

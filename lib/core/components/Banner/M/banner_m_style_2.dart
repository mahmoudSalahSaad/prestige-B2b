import 'package:flutter/material.dart';

import '../../../../constants.dart';
import 'banner_m.dart';

class BannerMStyle2 extends StatelessWidget {
  const BannerMStyle2({
    super.key,
    this.image = "https://i.imgur.com/J1Qjut7.png",
    required this.title,
    required this.press,
    this.subtitle,
  });
  final String? image;
  final String title;
  final String? subtitle;

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return BannerM(
      image: image ?? "https://i.imgur.com/J1Qjut7.png",
      press: press,
      children: [
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title.toUpperCase(),
                      style: const TextStyle(
                        fontFamily: grandisExtendedFont,
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        height: 1,
                      ),
                    ),
                    const SizedBox(height: defaultPadding / 4),
                    if (subtitle != null)
                      Text(
                        subtitle!.toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                  ],
                ),
              ),
        
            ],
          ),
        ),
      ],
    );
  }
}

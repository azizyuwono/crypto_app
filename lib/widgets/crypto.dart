import 'package:flutter/material.dart';
import 'package:simple_crypto/theme.dart';
import 'package:simple_crypto/models/crytpo_card.dart';

class CryptoView extends StatelessWidget {
  final Crypto crypto;
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  const CryptoView(this.crypto);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 72,
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 12,
        ),
        child: Row(
          children: [
            Image.asset(
              crypto.imageUrl,
              width: 48,
            ),
            const SizedBox(
              width: 18,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  crypto.name,
                  style: subStyle,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  '\$${crypto.price}',
                  style: titleStyle,
                ),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                Text(
                  '+${crypto.percent}%',
                  style: percentStyle,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  'Today',
                  style: subStyle.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

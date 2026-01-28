import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:simple_crypto/data/models/crypto.dart';

class AssetCard extends StatelessWidget {
  final Crypto crypto;

  const AssetCard({super.key, required this.crypto});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currencyFormatter = NumberFormat.currency(symbol: '\$', decimalDigits: 2);

    return Container(
      width: double.infinity,
      height: 72,
      decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(15)),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  crypto.name,
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  currencyFormatter.format(crypto.price),
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '+${crypto.changePercent}%',
                  style: theme.textTheme.displaySmall,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  'Today',
                  style: theme.textTheme.bodyMedium?.copyWith(
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

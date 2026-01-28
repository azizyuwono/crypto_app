import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:simple_crypto/core/theme/app_theme.dart';
import 'package:simple_crypto/data/models/recommendation.dart';

class RecommendationCard extends StatelessWidget {
  final Recommendation recommendation;

  const RecommendationCard({super.key, required this.recommendation});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currencyFormatter = NumberFormat.currency(symbol: '\$', decimalDigits: 2);

    return Container(
      width: 140,
      height: 156,
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              recommendation.imageUrl,
              width: 42,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              recommendation.name,
              style: theme.textTheme.titleMedium?.copyWith(fontSize: 14),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: Text(
                    currencyFormatter.format(recommendation.price),
                    style: theme.textTheme.titleMedium?.copyWith(fontSize: 12),
                  ),
                ),
                Text(
                  '+${recommendation.changePercent}%',
                  style: theme.textTheme.displaySmall?.copyWith(fontSize: 12),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: double.infinity,
              height: 32,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.button,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: Text('Buy', style: theme.textTheme.labelLarge),
              ),
            )
          ],
        ),
      ),
    );
  }
}

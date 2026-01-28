import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_crypto/presentation/providers/home_provider.dart';
import 'package:simple_crypto/presentation/widgets/asset_card.dart';
import 'package:simple_crypto/presentation/widgets/home_header.dart';
import 'package:simple_crypto/presentation/widgets/portfolio_card.dart';
import 'package:simple_crypto/presentation/widgets/recommendation_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final provider = context.watch<HomeProvider>();

    if (provider.isLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    if (provider.error != null) {
      return Scaffold(body: Center(child: Text('Error: ${provider.error}')));
    }

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  const HomeHeader(),
                  const SizedBox(height: 24),
                  const PortfolioCard(),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('My Assets', style: theme.textTheme.titleMedium),
                      Text('View All', style: theme.textTheme.bodySmall),
                    ],
                  ),
                  const SizedBox(height: 12),
                ]),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 14),
                      child: AssetCard(crypto: provider.assets[index]),
                    );
                  },
                  childCount: provider.assets.length,
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(24),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Recommended to Buy', style: theme.textTheme.titleMedium),
                      Text('View All', style: theme.textTheme.bodySmall),
                    ],
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 156,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: provider.recommendations.length,
                      separatorBuilder: (context, index) => const SizedBox(width: 14),
                      itemBuilder: (context, index) {
                        return RecommendationCard(
                          recommendation: provider.recommendations[index],
                        );
                      },
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

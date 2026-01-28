import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Shadam',
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              'Your portfolio looks great today',
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
        Image.asset(
          'assets/profile.png',
          width: 36,
        ),
      ],
    );
  }
}

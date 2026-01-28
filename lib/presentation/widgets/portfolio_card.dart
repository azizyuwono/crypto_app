import 'package:flutter/material.dart';

class PortfolioCard extends StatelessWidget {
  const PortfolioCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/Card.png',
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:simple_crypto/core/theme/app_theme.dart';
import 'package:simple_crypto/data/repositories/crypto_repository.dart';
import 'package:simple_crypto/presentation/providers/home_provider.dart';
import 'package:simple_crypto/presentation/screens/home_screen.dart';

void main() {
  testWidgets('HomeScreen displays assets and recommendations', (tester) async {
    final repo = CryptoRepository();

    await tester.pumpWidget(
      MultiProvider(
        providers: [
          Provider<CryptoRepository>.value(value: repo),
          ChangeNotifierProvider(create: (_) => HomeProvider(repo)..loadData()),
        ],
        child: MaterialApp(
          theme: AppTheme.lightTheme,
          home: const HomeScreen(),
        ),
      ),
    );

    // Initial state (loading)
    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    await tester.pumpAndSettle();

    expect(find.text('My Assets'), findsOneWidget);
    expect(find.text('Ethereum'), findsOneWidget);
    expect(find.text('Tron'), findsOneWidget);
  });
}

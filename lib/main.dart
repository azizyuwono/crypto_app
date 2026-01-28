import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_crypto/core/theme/app_theme.dart';
import 'package:simple_crypto/data/repositories/crypto_repository.dart';
import 'package:simple_crypto/presentation/providers/home_provider.dart';
import 'package:simple_crypto/presentation/screens/main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => CryptoRepository()),
        ChangeNotifierProvider(
          create: (context) => HomeProvider(
            context.read<CryptoRepository>(),
          )..loadData(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        home: const MainScreen(),
      ),
    );
  }
}

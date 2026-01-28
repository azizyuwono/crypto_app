import 'package:flutter_test/flutter_test.dart';
import 'package:simple_crypto/data/repositories/crypto_repository.dart';
import 'package:simple_crypto/presentation/providers/home_provider.dart';

void main() {
  test('HomeProvider loads data correctly', () async {
    final repo = CryptoRepository();
    final provider = HomeProvider(repo);

    expect(provider.isLoading, false);
    expect(provider.assets, isEmpty);

    final future = provider.loadData();
    expect(provider.isLoading, true);

    await future;

    expect(provider.isLoading, false);
    expect(provider.assets, isNotEmpty);
    expect(provider.recommendations, isNotEmpty);
    expect(provider.error, isNull);
  });
}

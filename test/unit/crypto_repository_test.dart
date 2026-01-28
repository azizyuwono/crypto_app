import 'package:flutter_test/flutter_test.dart';
import 'package:simple_crypto/data/repositories/crypto_repository.dart';

void main() {
  test('CryptoRepository returns assets', () async {
    final repo = CryptoRepository();
    final assets = await repo.getAssets();
    expect(assets, isNotEmpty);
    expect(assets.first.name, 'Ethereum');
  });

  test('CryptoRepository returns recommendations', () async {
    final repo = CryptoRepository();
    final recommendations = await repo.getRecommendations();
    expect(recommendations, isNotEmpty);
    expect(recommendations.first.name, 'Tron');
  });
}

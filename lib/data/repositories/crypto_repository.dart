import 'package:simple_crypto/data/models/crypto.dart';
import 'package:simple_crypto/data/models/recommendation.dart';

class CryptoRepository {
  Future<List<Crypto>> getAssets() async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 500));

    return [
      const Crypto(
        id: '1',
        name: 'Ethereum',
        symbol: 'ETH',
        imageUrl: 'assets/eth.png',
        price: 60000005.0,
        changePercent: 5.0,
      ),
      const Crypto(
        id: '2',
        name: 'Bitcoin',
        symbol: 'BTC',
        imageUrl: 'assets/btc.png',
        price: 30000002.0,
        changePercent: 2.0,
      ),
      const Crypto(
        id: '3',
        name: 'Cardano', // Assuming cdn.png is Cardano based on filename hint or similar
        symbol: 'ADA',
        imageUrl: 'assets/cdn.png',
        price: 20000003.0,
        changePercent: 3.0,
      ),
    ];
  }

  Future<List<Recommendation>> getRecommendations() async {
    await Future.delayed(const Duration(milliseconds: 500));

    return [
      const Recommendation(
        id: '1',
        name: 'Tron',
        imageUrl: 'assets/icon1.png',
        price: 15.00,
        changePercent: 5.09,
      ),
      const Recommendation(
        id: '2',
        name: 'Stellar',
        imageUrl: 'assets/icon2.png',
        price: 8.09,
        changePercent: 2.01,
      ),
      const Recommendation(
        id: '3',
        name: 'Xrp Ripple',
        imageUrl: 'assets/icon3.png',
        price: 4.09,
        changePercent: 1.01,
      ),
    ];
  }
}

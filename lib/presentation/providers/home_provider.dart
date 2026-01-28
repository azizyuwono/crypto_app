import 'package:flutter/material.dart';
import 'package:simple_crypto/data/models/crypto.dart';
import 'package:simple_crypto/data/models/recommendation.dart';
import 'package:simple_crypto/data/repositories/crypto_repository.dart';

class HomeProvider extends ChangeNotifier {
  final CryptoRepository _repository;

  HomeProvider(this._repository);

  List<Crypto> _assets = [];
  List<Recommendation> _recommendations = [];
  bool _isLoading = false;
  String? _error;

  List<Crypto> get assets => _assets;
  List<Recommendation> get recommendations => _recommendations;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> loadData() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final results = await Future.wait([
        _repository.getAssets(),
        _repository.getRecommendations(),
      ]);

      _assets = results[0] as List<Crypto>;
      _recommendations = results[1] as List<Recommendation>;
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}

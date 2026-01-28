class Crypto {
  final String id;
  final String name;
  final String symbol;
  final String imageUrl;
  final double price;
  final double changePercent;

  const Crypto({
    required this.id,
    required this.name,
    required this.symbol,
    required this.imageUrl,
    required this.price,
    required this.changePercent,
  });

  factory Crypto.fromJson(Map<String, dynamic> json) {
    return Crypto(
      id: json['id'] as String,
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      imageUrl: json['imageUrl'] as String,
      price: (json['price'] as num).toDouble(),
      changePercent: (json['changePercent'] as num).toDouble(),
    );
  }
}

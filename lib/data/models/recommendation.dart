class Recommendation {
  final String id;
  final String name;
  final String imageUrl;
  final double price;
  final double changePercent;

  const Recommendation({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.changePercent,
  });

  factory Recommendation.fromJson(Map<String, dynamic> json) {
    return Recommendation(
      id: json['id'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      price: (json['price'] as num).toDouble(),
      changePercent: (json['changePercent'] as num).toDouble(),
    );
  }
}

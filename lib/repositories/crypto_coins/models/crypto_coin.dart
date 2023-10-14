// ignore_for_file: public_member_api_docs, sort_constructors_first
class CryptoCoin {
  const CryptoCoin({
    required this.name,
    required this.priceInUSD,
    required this.imageUrl,
  });
  final String name;
  final double priceInUSD;
  final String imageUrl;
}

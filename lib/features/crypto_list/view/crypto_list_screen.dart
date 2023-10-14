import 'package:flutter/material.dart';
import 'package:my_crypto_app/features/crypto_list/widgets/widgets.dart';
import 'package:my_crypto_app/repositories/crypto_coins/crypto_coins_repository.dart';
import 'package:my_crypto_app/repositories/crypto_coins/models/crypto_coin.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  List<CryptoCoin>? _cryptoCoinsList;

  @override
  void initState() {
    _loadCriptoCoins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Crypto Currencies List'),
      ),
      body: Center(
        child: (_cryptoCoinsList == null)
            ? const CircularProgressIndicator()
            : ListView.separated(
                padding: const EdgeInsets.only(top: 16),
                itemCount: _cryptoCoinsList!.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, i) {
                  final coin = _cryptoCoinsList![i];
                  return CryptoCoinTile(coin: coin);
                },
              ),
      ),
    );
  }

  Future<void> _loadCriptoCoins() async {
    _cryptoCoinsList = await CryptoCoinsRepository().getCoinsList();
    setState(() {});
  }
}

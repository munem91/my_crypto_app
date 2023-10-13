import 'package:flutter/material.dart';
import 'package:my_crypto_app/router/router.dart';
import 'package:my_crypto_app/theme/theme.dart';

class CryptoCurrenciesList extends StatelessWidget {
  const CryptoCurrenciesList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Crypto App',
      theme: darkTheme,
      routes: routes,
    );
  }
}
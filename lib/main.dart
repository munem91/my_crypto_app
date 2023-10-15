import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:my_crypto_app/crypto_currencies_list_app.dart';
import 'repositories/crypto_coins/crypto_coins.dart';

void main() {
  GetIt.I.registerLazySingleton<AbstractCoinsRepository>(
    () => (CryptoCoinsRepository(dio: Dio())),
  );
  runApp(const CryptoCurrenciesList());
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const CryptoCurrenciesList());
}

class CryptoCurrenciesList extends StatelessWidget {
  const CryptoCurrenciesList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Crypto App',
      theme: ThemeData(
        dividerColor: Colors.white24,
        scaffoldBackgroundColor: const Color.fromARGB(255, 38, 38, 38),
        primarySwatch: Colors.yellow,
        listTileTheme: const ListTileThemeData(iconColor: Colors.white),
        appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            backgroundColor: Color.fromARGB(255, 38, 38, 38)),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          bodySmall: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ),
      routes: {
        '/': (context) => const CryptoListScreen(),
        '/coin': (context) => const CryproCoinScreen(),
      },
    );
  }
}

class CryptoListScreen extends StatelessWidget {
  const CryptoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Crypto Currencies List'),
      ),
      body: ListView.separated(
        itemCount: 20,
        separatorBuilder: (context, index) => Divider(
          color: theme.dividerColor,
        ),
        itemBuilder: (context, i) {
          const coinName = 'Bitcoin';
          return ListTile(
            leading: SvgPicture.asset(
              'assets/svg/bitcoin_logo.svg',
              height: 30,
              width: 30,
            ),
            title: Text(
              coinName,
              style: theme.textTheme.bodyMedium,
            ),
            subtitle: Text(
              '20000\$',
              style: theme.textTheme.bodySmall,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
            onTap: () {
              Navigator.of(context).pushNamed(
                '/coin',
                arguments: coinName,
              );
            },
          );
        },
      ),
    );
  }
}

class CryproCoinScreen extends StatefulWidget {
  const CryproCoinScreen({super.key});

  @override
  State<CryproCoinScreen> createState() => _CryproCoinScreenState();
}

class _CryproCoinScreenState extends State<CryproCoinScreen> {
  String? coinName;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null && args is String, 'You must provide String args');

    coinName = args as String;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(coinName ?? '...'),
      ),
    );
  }
}

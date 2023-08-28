import 'dart:convert';

import 'package:crypto_currency/presentation/bloc/bloc/currency_list_bloc.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cached_network_image/cached_network_image.dart';

import 'domain/entities/currencies/currencies.dart';

const api = '131c2c62-1eea-46ab-98c4-99c76cf9d770';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale.fromSubtags(languageCode: 'en'),
        Locale.fromSubtags(languageCode: 'ru'),
      ],
      path: 'assets/translations',
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateTitle: (context) => 'title'.tr(),
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final dio = Dio();

  @override
  Widget build(BuildContext context) {
    //   dio.transformer = BackgroundTransformer()..jsonDecodeCallback = parseJson;

    return Scaffold(
      appBar: AppBar(title: const Text('title').tr()),
      // body: FutureBuilder(
      //   future: dio.get('https://api.coincap.io/v2/assets'),
      //   builder: (context, snapshot) {
      //     if (snapshot.hasData) {
      //       final currencies =
      //           Currencies.fromJson(jsonDecode(snapshot.data.toString()));

      //       return ListView.builder(
      //         itemCount: currencies.data!.length,
      //         itemBuilder: (context, index) {
      //           final currency = currencies.data![index];
      //           return ListTile(
      //             leading: CachedNetworkImage(
      //               imageUrl:
      //                   'https://assets.coincap.io/assets/icons/${currency.symbol?.toLowerCase()}@2x.png',
      //               height: 36,
      //               width: 36,
      //               cacheKey: currency.symbol,
      //               placeholder: (context, url) =>
      //                   const CircularProgressIndicator(),
      //               errorWidget: (context, url, error) =>
      //                   Text((error.toString())),
      //             ),
      //             title: Text('${currency.name} (${currency.symbol})'),
      //             onTap: () {},
      //             trailing: Text(
      //               'price',
      //               style: TextStyle(
      //                 fontSize: 16,
      //                 fontWeight: FontWeight.w800,
      //               ),
      //             ).plural(double.parse(currency.priceUsd ?? '0.0'),
      //                 format: NumberFormat("###,###0.0##", "en_US")),
      //           );
      //         },
      //       );
      //     } else {
      //       return const Center(child: CircularProgressIndicator());
      //     }
      //     //Map<String, dynamic> user = jsonDecode(snapshot.data!.data);
      //     //  final c = Currencies.fromJson(user);
      //   },
      // ),
      body: BlocBuilder<CurrencyListBloc, CurrencyListState>(
        bloc: CurrencyListBloc()..add(CurrencyListEvent.started()),
        builder: (context, state) {
          return state.when(
            initial: () {
              return SizedBox();
            },
            loading: () {
              return Center(child: CircularProgressIndicator());
            },
            loaded: (currencies) {
              return ListView.builder(
                itemCount: currencies.length,
                itemBuilder: (context, index) {
                  final currency = currencies[index];
                  return ListTile(
                    leading: CachedNetworkImage(
                      imageUrl:
                          'https://assets.coincap.io/assets/icons/${currency.symbol?.toLowerCase()}@2x.png',
                      height: 36,
                      width: 36,
                      cacheKey: currency.symbol,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          Text((error.toString())),
                    ),
                    title: Text('${currency.name} (${currency.symbol})'),
                    subtitle: Text(DateFormat.jms(context.locale.toString())
                        .format(DateTime.fromMillisecondsSinceEpoch(
                            1693152996156))),
                    onTap: () {},
                    trailing: Text(
                      'price',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ).plural(
                      double.parse(currency.priceUsd ?? '0.0'),
                      format: NumberFormat(
                        "###,##0.00",
                        context.locale.toString(),
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../app/di/injection.dart';
import '../bloc/currency_list/currency_list_bloc.dart';

@RoutePage()
class CurrencyListPage extends StatelessWidget {
  const CurrencyListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('title').tr()),
      body: BlocBuilder<CurrencyListBloc, CurrencyListState>(
        bloc: getIt<CurrencyListBloc>()..add(const CurrencyListEvent.started()),
        builder: (context, state) {
          return state.when(
            initial: () {
              return const SizedBox();
            },
            loading: () {
              return const Center(child: CircularProgressIndicator());
            },
            loaded: (currencies) {
              return ListView.builder(
                itemCount: currencies.length,
                itemBuilder: (context, index) {
                  final currency = currencies[index];
                  return ListTile(
                    leading: CachedNetworkImage(
                      imageUrl: currency.imageUrl,
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
                        .format(currency.date)),
                    onTap: () {},
                    trailing: const Text(
                      'price',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ).plural(
                      currency.priceUsd ?? 0.0,
                      format: NumberFormat(
                        "###,##0.00",
                        context.locale.toString(),
                      ),
                    ),
                  );
                },
              );
            },
            error: () {
              return const Placeholder();
            },
          );
        },
      ),
    );
  }
}

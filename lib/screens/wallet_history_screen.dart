import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:franchise/models/wallet.dart';
import 'package:franchise/screens/bottom_navigationb_bar_screen.dart';
import 'package:franchise/widgets/custom_show_list_wallet.dart';
import '../utils/colorz.dart';
import '../widgets/custom_text_form_field.dart';

class WalletHistoryScreen extends StatefulWidget {
  const WalletHistoryScreen({super.key});

  static const routeName = '/wallet-history-screen';
  @override
  State<WalletHistoryScreen> createState() => _WalletHistoryScreenState();
}

class _WalletHistoryScreenState extends State<WalletHistoryScreen> {
  List<Wallet> walletListItem = [
    Wallet(type: 'Creadit', amount: 500, balance: 1077),
    Wallet(type: 'Creadit', amount: 500, balance: 1077),
    Wallet(type: 'Creadit', amount: 1000, balance: 1077),
    Wallet(type: 'Debit', amount: 175, balance: 77),
    Wallet(type: 'Creadit', amount: 1000, balance: 252),
    Wallet(type: 'Creadit', amount: 1000, balance: 252),
    Wallet(type: 'Creadit', amount: 1000, balance: 252),
    Wallet(type: 'Creadit', amount: 1000, balance: 252),
    Wallet(type: 'Creadit', amount: 1000, balance: 252),
  ];
  bool isShowWallet = false;
   Future<void> _refresh()async{
    await Future.delayed(const Duration(seconds: 4));
  }
  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.height * 0.07;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colorz.screenBackground,
        drawer: const CustomDrawer(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colorz.main),
          backgroundColor: Colorz.appBar,
          title: Text(
            "Wallet History",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colorz.main, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: RefreshIndicator(
          onRefresh: _refresh,
          backgroundColor: Colorz.main,
          color: Colorz.screenBackground,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Expanded(child: SizedBox()),
                    Expanded(
                      child: CustomTextFormField(
                        fillColor: Colorz.screenBackground,
                        hintText: 'Search',
                        prefixIcon: const Icon(
                          TablerIcons.search,
                          color: Colorz.main,
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: [
                    typeNameWidget('Type'),
                    amountNameWidget('Amount'),
                    balanceNameWidget('Balance'),
                    sizedNameWidget(''),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return const CustomShowListWallet();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded typeNameWidget(String type) {
    return Expanded(
      child: Text(
        "Type",
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: Colorz.main),
      ),
    );
  }

  Expanded amountNameWidget(String amount) {
    return Expanded(
      child: Text(
        "Amount",
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: Colorz.main),
      ),
    );
  }

  Expanded balanceNameWidget(String balance) {
    return Expanded(
      child: Text(
        "Balance",
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: Colorz.main),
      ),
    );
  }

  Expanded sizedNameWidget(String balance) {
    return const Expanded(
      child: Text(
        "",
        textAlign: TextAlign.center,
      ),
    );
  }
}

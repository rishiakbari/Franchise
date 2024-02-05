import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

import '../models/wallet.dart';
import '../utils/colorz.dart';

class CustomShowListWallet extends StatefulWidget {
  const CustomShowListWallet({super.key});

  @override
  State<CustomShowListWallet> createState() => _CustomShowListWalletState();
}

class _CustomShowListWalletState extends State<CustomShowListWallet> {
  bool isShowWallet = false;
  List<Wallet> walletListItem = [
    Wallet(type: 'Creadit', amount: 500,balance: 1077),
    Wallet(type: 'Creadit', amount: 500,balance: 1077),
    Wallet(type: 'Creadit', amount: 1000,balance: 1077),
    Wallet(type: 'Debit', amount: 175,balance: 77),
    Wallet(type: 'Creadit', amount: 1000,balance: 252),
    Wallet(type: 'Creadit', amount: 1000,balance: 252),
    Wallet(type: 'Creadit', amount: 1000,balance: 252),
    Wallet(type: 'Creadit', amount: 1000,balance: 252),
    Wallet(type: 'Creadit', amount: 1000,balance: 252),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colorz.main,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  // walletListItem[index].type!,
                  "Credit",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colorz.textPrimary),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: Text(
                  "1027",
                  // walletListItem[index].amount.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colorz.textPrimary),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: Text(
                  "252",
                  // walletListItem[index].balance.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colorz.textPrimary),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: IconButton(
                    onPressed: () {
                        setState(() {
                          isShowWallet = !isShowWallet;
                          });
                    },
                    icon: !isShowWallet
                    ? const Icon(TablerIcons.chevron_down,color: Colorz.main,)
                    :const Icon(TablerIcons.chevron_up,color: Colorz.main,)
                    ),
              ),
            ],
          ),
           isShowWallet ? Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25.0),
             child: Column(
                     children: [
                       Row(
              children: [
                Expanded(
                  child: Text(
                    "Date : ",
                    style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colorz.textSecondary,),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    "21-jan-2024",
                    style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colorz.textSecondary,),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5,),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Desc. : ",
                    style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colorz.textSecondary,),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    "Card purchase by wallet, Order No : 308",
                    style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colorz.textSecondary,),
                  ),
                )
              ],
            ),
            const SizedBox(height: 5,),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Payment :",
                    style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colorz.textSecondary,),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    "Successful",
                    style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colorz.textSecondary,),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "Status",
                  style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colorz.textSecondary,),
                ),
              ],
            ),
            const SizedBox(height: 15.0,),
          ],
        ),
           ):const SizedBox.shrink()
        ],
      ),
    );
  }
  // Expanded typeNameWidget(String type) {
  //   return Expanded(
  //     child: Text(
  //         "type",
  //         textAlign: TextAlign.center,
  //         style: Theme.of(context)
  //             .textTheme
  //             .titleMedium!
  //             .copyWith(color: Colorz.main),
  //       ),
  //   );
  // }
  
  // Expanded amountNameWidget(String amount) {
  //    return Expanded(
  //      child: Text(
  //         "amount",
  //         textAlign: TextAlign.center,
  //         style: Theme.of(context)
  //             .textTheme
  //             .titleMedium!
  //             .copyWith(color: Colorz.main),
  //       ),
  //    );
  // }
  
  // Expanded balanceNameWidget(String balance) {
  //    return Expanded(
  //      child: Text(
  //         "balance",
  //         textAlign: TextAlign.center,
  //         style: Theme.of(context)
  //             .textTheme
  //             .titleMedium!
  //             .copyWith(color: Colorz.main),
  //       ),
  //    );
  // }

  // Expanded sizedNameWidget(String balance) {
  //    return const Expanded(
  //      child: Text(
  //         "",
  //         textAlign: TextAlign.center,
  //       ),
  //    );
  // }
}

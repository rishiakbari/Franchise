import 'package:flutter/material.dart';
import 'package:franchise/screens/bottom_navigationb_bar_screen.dart';
import 'package:franchise/widgets/custom_single_child_scroll_view.dart';
import 'package:franchise/widgets/custom_text_button.dart';
import 'package:franchise/widgets/custom_text_form_field.dart';
import '../utils/colorz.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  static const routeName = '/wallet-screen';

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.height *0.07;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colorz.screenBackground,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colorz.main),
        backgroundColor: Colorz.appBar,
        title: Text(
          "Wallet",
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colorz.main, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: CustomSingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 70.0),
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Wallet Amount",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: Colorz.textSecondary)),
                  Text(
                    "Rs 1077",
                      style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: Colorz.textPrimary, fontWeight: FontWeight.w600)),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Add Ammount",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colorz.textSecondary),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 80,
                      right: 80,
                    ),
                    child: CustomTextFormField(
                      fillColor: Colorz.screenBackground,
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextButton(
                    text: "Submit",
                    fitted: true,
                    gradient: const LinearGradient(
                      colors: [
                        Colorz.buttonGradientOne,
                        Colorz.buttonGradientTwo,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          )),
    ));
  }
}

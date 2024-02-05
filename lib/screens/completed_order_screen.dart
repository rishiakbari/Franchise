import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:franchise/widgets/custom_show_list_order.dart';
import 'package:franchise/widgets/custom_text_form_field.dart';

import '../utils/colorz.dart';
import '../widgets/custom_text_button.dart';
import 'bottom_navigationb_bar_screen.dart';

class CompletedOrderScreen extends StatefulWidget {
  const CompletedOrderScreen({super.key});

  static const routeName = '/completedorder-screen';

  @override
  State<CompletedOrderScreen> createState() => _CompletedOrderScreenState();
}

class _CompletedOrderScreenState extends State<CompletedOrderScreen> {

  final TextEditingController searchTextController = TextEditingController();
   Future<void> _refresh()async{
    await Future.delayed(const Duration(seconds: 4));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colorz.screenBackground,
         drawer: const CustomDrawer(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colorz.main),
          backgroundColor: Colorz.appBar,
          title: Text(
            "Completed Order",
            style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(
              color: Colorz.main,
              fontWeight: FontWeight.w600
            ),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          hintText: "Search",
                          fillColor: Colorz.screenBackground,
                          prefixIcon: const Icon(TablerIcons.search,color: Colorz.main,),
                          onTap: () {
                            
                          },
                        ),
                      ),
                      const SizedBox(width: 20.0,),
                      CustomTextButton(
                        text: "+ Add New Order",
                        fitted: true,
                        onPressed: () {
                          Navigator.of(context).pushNamed('/addneworder-screen');
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 50,),
                   Text(
                    "Order Number",
                    style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colorz.textPrimary),
                  ),
                  const SizedBox(height: 10.0,),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return const CustomShowListOrder();
                        },
                      ),
                    )
                ],
              ),
            ),
          )
      ),
    );
  }
}
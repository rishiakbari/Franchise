import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:franchise/screens/bottom_navigationb_bar_screen.dart';
import 'package:franchise/widgets/custom_show_list_customer_lead.dart';
import 'package:franchise/widgets/custom_text_form_field.dart';

import '../utils/colorz.dart';

class CustomerLeadScreen extends StatefulWidget {
  const CustomerLeadScreen({super.key});

  static const routeName = '/customerlead-screen';

  @override
  State<CustomerLeadScreen> createState() => _CustomerLeadScreenState();
}

class _CustomerLeadScreenState extends State<CustomerLeadScreen> {
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
          "Customer Lead",
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
              Text(
                "City",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Colorz.textSecondary),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: CustomTextFormField(
                  fillColor: Colorz.screenBackground,
                  hintText: 'City',
                  onTap: () {},
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                "State",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Colorz.textSecondary),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: CustomTextFormField(
                  fillColor: Colorz.screenBackground,
                  hintText: 'State',
                  onTap: () {},
                ),
              ),
            ],
          ),
         const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                "Status",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Colorz.textSecondary),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: CustomTextFormField(
                    fillColor: Colorz.screenBackground,
                    hintText: 'Status',
                    onTap: () {},
                  )),
              const Expanded(child: SizedBox()),
              // Padding(padding: EdgeInsets.only(right: 70))
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Name",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colorz.main),
                ),
              ),
              Expanded(
                child: CustomTextFormField(
                  fillColor: Colorz.screenBackground,
                  hintText: 'Search',
                  prefixIcon: const Icon(TablerIcons.search,color: Colorz.main,),
                  onTap: () {},
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
        
           Expanded(
             child: ListView.builder(
               itemBuilder: (context, index) {
                 return const CustomerShowListLead();
               },
             ),
           )
          // SizedBox(
          //   height: 55,
          //   child: CustomTextFormField(
          //     fillColor: Colorz.screenBackground,
          //     hintText: 'ABC',
          //     suffixIcon:const Icon(
          //       TablerIcons.chevron_down,
          //       color: Colorz.main,
          //     ),
          //     onTap: () {},
          //   ),
          // ),
        ],
                ),
              ),
      ),
    ));
  }
}

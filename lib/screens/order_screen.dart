// import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:franchise/widgets/custom_show_list_order.dart';
import 'package:franchise/widgets/custom_text_form_field.dart';
import '../utils/colorz.dart';
import '../widgets/custom_text_button.dart';
import 'bottom_navigationb_bar_screen.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  static const routeName = '/order-screen';

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {

  final TextEditingController searchTextController = TextEditingController();
  // String? valueChoose;
  // static const List<String> listItem = [
  //   "100","101","102","103","104","105"
  // ];
  Future<void> _refresh()async{
    await Future.delayed(const Duration(seconds: 3));
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height *0.07;
    return SafeArea(
      child: Scaffold(
        drawer: const CustomDrawer(),
        backgroundColor: Colorz.screenBackground,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colorz.main),
          backgroundColor: Colorz.appBar,
          title: Text(
            "Order",
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: SizedBox(
                        height: height,
                        child: CustomTextFormField(
                          hintText: "Search",
                          fillColor: Colorz.screenBackground,
                          prefixIcon: const Icon(
                            TablerIcons.search,
                            color: Colorz.main,
                          ),
                          onTap: () {
                            
                          },
                        ),
                      ),
                    ),
                   const SizedBox(width: 20.0,),
          
                    CustomTextButton(
                      text: "+ Add New Order",
                      fitted: true,
                      onPressed: () {
                        Navigator.pushNamed(context, '/addneworder-screen');
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
                const SizedBox(height: 10,),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 100,
                      // shrinkWrap: true,
                      // physics:const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return const CustomShowListOrder();
                      },
                    ),
                  )
              ],
            ),
          ),
        ),
      ) 
    );
  }
}
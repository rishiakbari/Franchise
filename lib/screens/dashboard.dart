import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:franchise/screens/bottom_navigationb_bar_screen.dart';
import 'package:franchise/widgets/custom_circle_icon_button.dart';
import 'package:franchise/widgets/custom_single_child_scroll_view.dart';

import '../utils/colorz.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  static const routeName = '/dashboard-screen';

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  // Future<void> _refresh()async{
  //   await Future.delayed(const Duration(seconds: 4));
  // }
  DateTime selectedDate = DateTime.now();
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
            "Dashboard",
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
        body: CustomSingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 50.0),
            child: Column(
              children: [
                GridView.builder(
                   shrinkWrap: true,
                   physics: const NeverScrollableScrollPhysics(),
                   itemCount: 7,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 120,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                              child: Text(
                                "Membership Expiry Date",
                                style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(color: Colorz.textPrimary,fontWeight: FontWeight.w600),
                                ),
                            ),
                            const SizedBox(height: 10,),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical:8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colorz.main,width: 1),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                   CustomCircleIconButton(
                                    icon: TablerIcons.users,
                                    onPressed: () {
                                    }, 
                                    ),
                                  FittedBox(
                                    child: Text(
                                      "520",
                                      // "${selectedDate.day}-${selectedDate.month}-${selectedDate.year}",
                                      style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(color: Colorz.textSecondary),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10,),
                          ],
                        ),
                      ),
                    );
                  }
                ),
              ],
            ),
          )
         ),
        ),
      );
  }
}
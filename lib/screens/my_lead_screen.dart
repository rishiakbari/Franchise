import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:franchise/screens/bottom_navigationb_bar_screen.dart';
import 'package:franchise/widgets/custom_text_button.dart';
import '../utils/colorz.dart';
import '../utils/helper.dart';
import '../widgets/custom_show_list_my_lead.dart';
import '../widgets/custom_text_form_field.dart';

class MyLeadScreen extends StatefulWidget {
  const MyLeadScreen({super.key});

  static const routeName = '/my-lead-screen';

  @override
  State<MyLeadScreen> createState() => _MyLeadScreenState();
}

class _MyLeadScreenState extends State<MyLeadScreen> {
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
          "My Lead",
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
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextButton(
                text: "+ Add Lead",
                fitted: true,
                onPressed: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextButton(
                text: "+ Add Excel File",
                fitted: true,
                onPressed: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.55,
                child: CustomTextButton(
                  icon: const Icon(
                    TablerIcons.download,
                  ),
                  text: "Download Excel File",
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 20.0,
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
                height: 15.0,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: CustomerShowListMyLead(),
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(
                                onTap: () {},
                                child: const Icon(
                                  TablerIcons.edit,
                                  color: Colorz.main,
                                )),
                            const SizedBox(
                              width: 5.0,
                            ),
                            InkWell(
                              child: const Icon(
                                TablerIcons.trash,
                                color: Colorz.main,
                              ),
                              onTap: () {
                                Helper.showCustomDialog(
                                  context: context,
                                  title: "Delete Coupon",
                                  children: [
                                    Text("Do you want to delete your lead?",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                                color: Colorz.textSecondary)),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    CustomTextButton(
                                      text: "Delete",
                                      gradient: const LinearGradient(
                                        colors: [
                                          Colorz.buttonGradientOne,
                                          Colorz.buttonGradientTwo,
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                      onPressed: () {},
                                    )
                                  ],
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

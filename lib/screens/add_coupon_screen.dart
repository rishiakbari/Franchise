import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:franchise/utils/helper.dart';
import 'package:franchise/widgets/custom_single_child_scroll_view.dart';

import '../models/coupon.dart';
import '../utils/colorz.dart';
import '../widgets/custom_text_button.dart';
import '../widgets/custom_text_form_field.dart';
import 'bottom_navigationb_bar_screen.dart';

class AddCouponScreen extends StatefulWidget {
  const AddCouponScreen({super.key});

  static const routeName = '/addcoupon-screen';

  @override
  State<AddCouponScreen> createState() => _AddCouponScreenState();
}

class _AddCouponScreenState extends State<AddCouponScreen> {
  final TextEditingController searchTextController = TextEditingController();
  List<ListCoupon> listItem = [
    ListCoupon(code: 'xyx10', discount: 10, type: 'parcentage'),
    ListCoupon(code: 'xyx10', discount: 10, type: 'parcentage'),
    ListCoupon(code: 'xyx10', discount: 10, type: 'parcentage'),
    ListCoupon(code: 'xyx10', discount: 10, type: 'parcentage'),
    ListCoupon(code: 'xyx10', discount: 10, type: 'parcentage'),
    ListCoupon(code: 'xyx10', discount: 10, type: 'parcentage'),
    ListCoupon(code: 'xyx10', discount: 10, type: 'parcentage'),
    ListCoupon(code: 'xyx10', discount: 10, type: 'parcentage'),
    ListCoupon(code: 'xyx10', discount: 10, type: 'parcentage'),
    ListCoupon(code: 'xyx10', discount: 10, type: 'parcentage'),
  ];
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
          "Add Coupon",
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colorz.main, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: CustomSingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: CustomTextFormField(
                      controller: searchTextController,
                      fillColor: Colorz.screenBackground,
                      prefixIcon: const Icon(TablerIcons.search,color: Colorz.main,),
                      hintText: "Search ",
                      onTap: () {},
                    ),
                  ),
                ),
               const Expanded(child: SizedBox())
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              addcouponCodeNameWidget('code'),
              addCouponDiscountNameWidget('discount'),
              addCouponTypeNameWidget('type'),
              addCouponActionNameWidget('action'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 45,
              child: ListView.builder(
                itemCount: listItem.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colorz.main),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  listItem[index].code!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(color: Colorz.textPrimary),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  listItem[index].discount.toString(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(color: Colorz.textPrimary),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  listItem[index].type!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(color: Colorz.textPrimary),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              FittedBox(
                                child: Row(
                                  children: [
                                    IconButton(
                                      icon: const Icon(
                                        TablerIcons.edit,
                                        color: Colorz.main,
                                      ),
                                      onPressed: () {
                                        Helper.showCustomDialog(
                                          context: context,
                                          title: "Add Coupon",
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Code",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall!
                                                      .copyWith(
                                                          color: Colorz
                                                              .textSecondary),
                                                ),
                                              ],
                                            ),
                                            CustomTextFormField(
                                              hintText: "ABC123",
                                              onTap: () {},
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Discount (%)",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall!
                                                      .copyWith(
                                                          color: Colorz
                                                              .textSecondary),
                                                ),
                                              ],
                                            ),
                                            CustomTextFormField(
                                              hintText: "ABC123",
                                              onTap: () {},
                                            ),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: CustomTextButton(
                                                text: "Remove",
                                                isUnderlineText: true,
                                                fitted: true,
                                                textColor: Colorz.textSecondary,
                                                backgroundColor:
                                                    Colors.transparent,
                                                onPressed: () {},
                                              ),
                                            ),
                                          ],
                                          action: Row(
                                            children: [
                                              CustomTextButton(
                                                gradient: const LinearGradient(
                                                  colors: [
                                                    Colorz.buttonGradientOne,
                                                    Colorz.buttonGradientTwo,
                                                  ],
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                ),
                                                text: "Submit",
                                                fitted: true,
                                                onPressed: () {},
                                              ),
                                              const SizedBox(
                                                width: 15,
                                              ),
                                              CustomTextButton(
                                                gradient: const LinearGradient(
                                                  colors: [
                                                    Colorz.buttonGradientOne,
                                                    Colorz.buttonGradientTwo,
                                                  ],
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                ),
                                                text: "Cancle",
                                                fitted: true,
                                                onPressed: () {},
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                    IconButton(
                                      icon: const Icon(
                                        TablerIcons.trash,
                                        color: Colorz.main,
                                      ),
                                      onPressed: () {
                                        Helper.showCustomDialog(
                                          context: context,
                                          title: "Delete Coupon",
                                          children: [
                                            Text("Do you want to delete this coupon?",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium!
                                                    .copyWith(
                                                        color: Colorz
                                                            .textSecondary)),
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
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      )),
    ));
  }

  Expanded addcouponCodeNameWidget(
    String code,
  ) {
    return Expanded(
      child: Text(
        "Code",
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: Colorz.main),
      ),
    );
  }

  Expanded addCouponDiscountNameWidget(
    String discount,
  ) {
    return Expanded(
      child: Text(
        "Discount",
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: Colorz.main),
      ),
    );
  }

  Expanded addCouponTypeNameWidget(
    String type,
  ) {
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

  Expanded addCouponActionNameWidget(
    String action,
  ) {
    return Expanded(
      child: Text(
        "Action",
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: Colorz.main),
      ),
    );
  }
}

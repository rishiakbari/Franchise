import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:franchise/screens/bottom_navigationb_bar_screen.dart';
import 'package:franchise/utils/helper.dart';
import 'package:franchise/widgets/custom_text_form_field.dart';
import '../models/coupon.dart';
import '../utils/colorz.dart';
import '../widgets/custom_text_button.dart';

class CouponScreen extends StatefulWidget {
  const CouponScreen({super.key});

  static const routeName = '/coupon-screen';

  @override
  State<CouponScreen> createState() => _CouponScreenState();
}

class _CouponScreenState extends State<CouponScreen> {
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
            "Coupon",
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
                Flexible(
                  child: CustomTextFormField(
                    fillColor: Colorz.screenBackground,
                    hintText: "Search",
                    prefixIcon: const Icon(
                      TablerIcons.search,
                      color: Colorz.main,
                    ),
                    onChanged: (p0) {},
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
          
                CustomTextButton(
                  text: "+ Add New Coupon",
                  fitted: true,
                  onPressed: () {
                    Helper.showCustomDialog(
                      context: context,
                      title: "Add Coupon",
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Code",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: Colorz.textSecondary),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount (%)",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: Colorz.textSecondary),
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
                            backgroundColor: Colors.transparent,
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
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed('/addcoupon-screen');
                            },
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
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
                // Text(
                //   "+Add New Coupon",
                //   style: Theme.of(context).textTheme.titleSmall!.copyWith(
                //       color: Colorz.textBlack, fontWeight: FontWeight.w600),
                // ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                codeNameWidget('code'),
                discountNameWidget('discount'),
                typeNameWidget('type'),
                actionNameWidget('action'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: listItem.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colorz.main),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  listItem[index].code!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: Colorz.textPrimary),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  listItem[index].discount.toString(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: Colorz.textPrimary),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  listItem[index].type!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: Colorz.textPrimary),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(width: 20.0,),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Helper.showCustomDialog(
                      context: context,
                      title: "Add Coupon",
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Code",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: Colorz.textSecondary),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount (%)",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: Colorz.textSecondary),
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
                            backgroundColor: Colors.transparent,
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
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed('/addcoupon-screen');
                            },
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
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    );
                                    },
                                    child: const Icon(
                                      TablerIcons.edit,
                                      color: Colorz.main,
                                    ),
                                  ),
                                  const SizedBox(width: 5.0,),
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
                                          Text(
                                              "Do you want to delete this coupon?",
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
                                            gradient:
                                                const LinearGradient(
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
                                  const SizedBox(width: 5.0,),
                                  // IconButton(
                                  //   icon: const Icon(
                                  //     TablerIcons.edit,
                                  //     color: Colorz.main,
                                  //   ),
                                  //   onPressed: () {},
                                  // ),
                                  // IconButton(
                                  //   icon: const Icon(
                                  //     TablerIcons.trash,
                                  //     color: Colorz.main,
                                  //   ),
                                  //   onPressed: () {},
                                  // ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
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

  Expanded codeNameWidget(
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

  Expanded discountNameWidget(
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

  Expanded typeNameWidget(
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

  Expanded actionNameWidget(
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

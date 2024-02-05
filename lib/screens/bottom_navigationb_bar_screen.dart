import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/drawer_item.dart';
import '../utils/colorz.dart';
import '../widgets/custom_single_child_scroll_view.dart';
import '../widgets/custom_text_button.dart';


class CustomDrawer extends StatefulWidget {
  const CustomDrawer({
    super.key,
  });

  static const routeName = '/customdrawer-screen';

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  // UserBody? user;
  // late SharedPreferences _sharedPreferences;

  // Future<void> _init(BuildContext context) async {
  //   _sharedPreferences = await SharedPreferences.getInstance();
  //   user = UserBody.fromJson(
  //       jsonDecode(_sharedPreferences.get("authUser").toString()));
  //   setState(() {});
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   _init(context);
  // }

  @override
  Widget build(BuildContext context) {
    final List<DrawerItem> items = [
      DrawerItem(
          title: 'Dashboard',
          onTap: () async{
            // Navigator.of(context).pop();
            await Navigator.of(context).pushNamed('/dashboard-screen');
            // await Navigator.of(context).pushNamed(AppProfileScreen.routeName);
          }),
      // if (appDataService.userData != null &&
      //     appDataService.userData!.paid != "1")
        DrawerItem(
            title: 'Order',
            onTap: () async{
              await Navigator.of(context).pushNamed('/order-screen');

              // Helper.showCustomDialog(
              //   context: context,
              //   title: 'Unlock Future',
              //   children: [Image.asset('assets/images/offer.png')],
              //   action: CustomTextButton(
              //     text: 'Pay',
              //     onPressed: () async {
              //       Navigator.of(context).pop();
              //       Navigator.of(context).push(
              //         MaterialPageRoute(
              //           builder: (context) => const PaymentScreen(),
              //         ),
              //       );
              //     },
              //   ),
              // );
            }),
      // if (user != null && user!.referredBy == null)
        DrawerItem(
            title: 'Completed Order',
            onTap: ()async{
              // Navigator.of(context).pop();
              await Navigator.of(context).pushNamed('/completedorder-screen');
              // await Navigator.of(context)
              //     .pushNamed(ReferralCodeScreen.routeName);
            }),
      DrawerItem(
          title: 'Coupon',
          onTap: ()async {
            // Navigator.of(context).pop();
            await Navigator.of(context).pushNamed('/coupon-screen');
          }),
      // DrawerItem(title: 'Learn', onTap: () async {
      //   Uri url = Uri.parse('https://taptrend.in/learn');
      //   if (!await launchUrl( url,mode: LaunchMode.externalApplication,)) {
      //   throw Exception('Could not launch $url');
      //   }
      // }),
      DrawerItem(
          title: 'User',
          onTap: () {
            // Uri url = Uri.parse('https://wa.me/916359587535');
            // if (!await launchUrl(
            //   url,
            //   mode: LaunchMode.externalApplication,
            // )) {
            //   throw Exception('Could not launch $url');
            // }
          }),
      DrawerItem(
          title: 'Customers Lead',
          onTap: () {
            Navigator.of(context).pushNamed('/customerlead-screen');
            // Uri url = Uri.parse('https://taptrend.in/about');
            // if (!await launchUrl(
            //   url,
            //   mode: LaunchMode.externalApplication,
            // )) {
            //   throw Exception('Could not launch $url');
            // }
          }),
      DrawerItem(
          title: 'My Leads',
          onTap: (){
            Navigator.of(context).pushNamed('/my-lead-screen');
            // Uri url = Uri.parse('https://taptrend.in/contact');
            // if (!await launchUrl(
            //   url,
            //   mode: LaunchMode.externalApplication,
            // )) {
            //   throw Exception('Could not launch $url');
            // }
          }),
      DrawerItem(
          title: 'Inquiry',
          onTap: () {
            // Uri url = Uri.parse('https://taptrend.in/faq');
            // if (!await launchUrl(
            //   url,
            //   mode: LaunchMode.externalApplication,
            // )) {
            //   throw Exception('Could not launch $url');
            // }
          }),
      DrawerItem(
          title: 'Wallet',
          onTap: () {
            Navigator.of(context).pushNamed('/wallet-screen');
            // final appId = Platform.isAndroid
            //     ? 'in.taptrend.tap_trend'
            //     : 'YOUR_IOS_APP_ID';
            // final url = Uri.parse(
            //   Platform.isAndroid
            //       ? "market://details?id=$appId"
            //       : "https://apps.apple.com/app/id$appId",
            // );
            // if (!await launchUrl(
            //   url,
            //   mode: LaunchMode.externalApplication,
            // )) {
            //   throw Exception('Could not launch $url');
            // }
          }),
      DrawerItem(
          title: 'Wallet History',
          onTap: (){
            Navigator.of(context).pushNamed('/wallet-history-screen');

            // Uri url = Uri.parse('https://taptrend.in/privacy-policy');
            // if (!await launchUrl(
            //   url,
            //   mode: LaunchMode.externalApplication,
            // )) {
            //   throw Exception('Could not launch $url');
            // }
          }),
      DrawerItem(
          title: 'Log out',
          onTap: () {
            // Helper.showLoading(context: context);
            // await ApiService.logout(
            //     token: _sharedPreferences.getString('authToken')!);
            // await _sharedPreferences.clear();
            // if (appDataService.googleSignIn != null &&
            //     await appDataService.googleSignIn!.isSignedIn()) {
            //   appDataService.googleSignIn!.signOut();
            // }
            // if (mounted) {
            //   Helper.hideLoading(context: context);
            //   await Navigator.of(context).pushNamedAndRemoveUntil(
            //       LoginScreen.routeName, (route) => false);
            // }
          }),
    ];
    return Scaffold(
      backgroundColor: Colorz.screenBackground,
      appBar: AppBar(
        backgroundColor: Colorz.appBar,
        leading:IconButton(
              icon: const Icon(TablerIcons.chevron_left),
              iconSize: 30.0,
              color: Colorz.main,
              onPressed: () => Navigator.of(context).pop(),
            ),
      ),
      body: CustomSingleChildScrollView(
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 110,
                width: 110,
                margin: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colorz.main,
                    width: 2.0,
                  ),
                ),
                child:const  CircleAvatar(
                  // foregroundImage: user != null && user!.avatar != null
                  //     ? NetworkImage(user!.avatar!)
                  //     : null,
                  backgroundColor: Colorz.screenBackground,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Text(
                      "Name",
                       style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color: Colorz.textPrimary,
                                  fontWeight: FontWeight.w600,
                                ),
                    ),
                    const SizedBox(),
                    Text(
                      "xyz@gmail.com",
                      style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: Colorz.textSecondary,
                                  fontWeight: FontWeight.w600,
                                ),
                    ),
                    const SizedBox(),
                    Text(
                      "+91 8200255249",
                      style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  color: Colorz.textSecondary,
                                ),
                    ),
                    const SizedBox(),
                    // user != null && user!.name != null
                    //     ? Text(
                    //         user!.name!,
                    //         style: Theme.of(context)
                    //             .textTheme
                    //             .headlineSmall!
                    //             .copyWith(
                    //               color: Colorz.textPrimary,
                    //               fontWeight: FontWeight.w600,
                    //             ),
                    //       )
                    //     : const SizedBox(),
                    // user != null && user!.email != null
                    //     ? Text(
                    //         user!.email!,
                    //         style: Theme.of(context)
                    //             .textTheme
                    //             .titleMedium!
                    //             .copyWith(
                    //               color: Colorz.textSecondary,
                    //             ),
                    //       )
                    //     : const SizedBox(),
                    // user != null && user!.phone != null
                    //     ? Text(
                    //         '+${user!.countryCode}${user!.phone!}',
                    //         style: Theme.of(context)
                    //             .textTheme
                    //             .titleMedium!
                    //             .copyWith(
                    //               color: Colorz.textSecondary,
                    //             ),
                    //       )
                    //     : const SizedBox(),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              FittedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: CustomTextButton(
                    text: 'Get Your Tap Trend Card Now',
                    fitted: true,
                    isGradient: true,
                    onPressed: () async {
                      Uri url = Uri.parse('https://taptrend.in/products');
                      if (!await launchUrl(
                        url,
                        mode: LaunchMode.externalApplication,
                      )) {
                        throw Exception('Could not launch $url');
                      }
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              ListView.builder(
                itemCount: items.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: items[index].onTap,
                        child: Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 5.0,
                              horizontal: 30.0,
                            ),
                            child: Text(
                              items[index].title,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    color: index != items.length - 1
                                        ? Colorz.textSecondary
                                        : Colorz.textPrimary,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      if (index != items.length - 1)
                        const Divider(
                          color: Colorz.divider,
                          thickness: 0.5,
                        ),
                    ],
                  );
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'App Version',
                   style: Theme.of(context)
                   .textTheme
                   .titleMedium!
                   .copyWith(
                      color: Colorz.textSecondary,
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
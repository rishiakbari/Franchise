import 'package:flutter/material.dart';
import 'package:franchise/screens/add_coupon_screen.dart';
import 'package:franchise/screens/bottom_navigationb_bar_screen.dart';
import 'package:franchise/screens/completed_order_screen.dart';
import 'package:franchise/screens/coupon_screen.dart';
import 'package:franchise/screens/create_profile_screen.dart';
import 'package:franchise/screens/customer_lead_screen.dart';
import 'package:franchise/screens/dashboard.dart';
import 'package:franchise/screens/my_lead_screen.dart';
import 'package:franchise/screens/order_screen.dart';
import 'package:franchise/screens/splash_screen.dart';
import 'package:franchise/screens/wallet_screen.dart';
import 'package:franchise/utils/app_theme.dart';
import 'screens/add_new_order_screen.dart';
import 'screens/login_screen.dart';
import 'screens/wallet_history_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: buildThemeData(context),
      title: 'Franchise',
      home: const SplashScreen(), 
      initialRoute: '/',
      routes: {
        SplashScreen.routeName :(context) => const SplashScreen(),
        LoginScreen.routeName :(context) => const LoginScreen(),
        CreateProfileScreen.routeName :(context) => const CreateProfileScreen(),
        DashBoardScreen.routeName :(context) => const DashBoardScreen(),
        OrderScreen.routeName :(context) => const OrderScreen(),
        AddNewOrderScreen.routeName :(context) => const AddNewOrderScreen(), 
        CompletedOrderScreen.routeName :(context) => const CompletedOrderScreen(),
        CouponScreen.routeName :(context) => const CouponScreen(),
        CustomDrawer.routeName :(context) => const CustomDrawer(),
        AddCouponScreen.routeName :(context) => const AddCouponScreen(),
        CustomerLeadScreen.routeName :(context) => const CustomerLeadScreen(),
        MyLeadScreen.routeName :(context) => const MyLeadScreen(),
        WalletScreen.routeName :(context) => const WalletScreen(),
        WalletHistoryScreen.routeName :(context) => const WalletHistoryScreen(),
      }
    );
  }
}



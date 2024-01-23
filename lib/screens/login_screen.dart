import 'package:flutter/material.dart';
// import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:franchise/widgets/custom_single_child_scroll_view.dart';
import 'package:franchise/widgets/custom_text_button.dart';
import 'package:franchise/widgets/custom_text_form_field.dart';

import '../utils/colorz.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const routeName = '/login-screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colorz.screenBackground,
        body: CustomSingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              right: 40.0,
              left: 40.0,
              top: 120.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("images/logo.png"),
                const SizedBox(height: 70.0,),
                Text(
                  'Sign In',
                  style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colorz.textPrimary,fontWeight: FontWeight.w600),                
                ),
                CustomTextFormField(
                  hintText: "Enter your Username",
                  prefixIcon: Icon(Icons.person),
                  controller: nameController,
                ),
                CustomTextFormField(
                  hintText: "Enter your Password",
                  controller: passwordController,
                  prefixIcon: Icon(Icons.vpn_key_sharp),
                  suffixIcon: Icon(Icons.visibility),
                ),
                const SizedBox(height: 10.0,),
                CustomTextButton(
                  text: "Log in",
                  onPressed: () {
                    Navigator.pushNamed(context, '/otp-screen');
                  },
                ),              
                      const SizedBox(height: 90,),

                     Text('By Tapping on Continue, you agree to our ',
                        style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    color: Colorz.textSecondary,
                        ),
                      ),
                      Center(
                        child: Text('Terms & Conditions, Privacy Policy',
                         style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    color: Colorz.textPrimary,
                         ),
                       ),
                      ),
                    ],
                  ),
                ),
            ),
          ),
        );
  }
}
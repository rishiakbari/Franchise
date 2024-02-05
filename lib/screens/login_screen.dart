import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:franchise/widgets/custom_single_child_scroll_view.dart';
import 'package:franchise/widgets/custom_text_button.dart';
import 'package:franchise/widgets/custom_text_form_field.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

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
  var isObsecure = true.obs;
  final _formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colorz.screenBackground,
        body: Form(
          key: _formkey,
          child: CustomSingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                right: 40.0,
                left: 40.0,
                top: 120.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/logo.png"),
                  const SizedBox(
                    height: 70.0,
                  ),
                  Text(
                    'Sign In',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colorz.textPrimary, fontWeight: FontWeight.w600),
                  ),
                  CustomTextFormField(
                    hintText: "Enter your Username",
                    fillColor: Colorz.screenBackground,
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colorz.main,
                    ),
                    controller: nameController,
                  ),
                  Obx(
                    () => CustomTextFormField(
                      hintText: "Enter your Password",
                      fillColor: Colorz.screenBackground,
                      controller: passwordController,
                      obscureText: isObsecure.value,
                      prefixIcon: const Icon(
                        Icons.vpn_key_sharp,
                        color: Colorz.main,
                      ),
                      suffixIcon: Obx(
                        () => GestureDetector(
                          onTap: () {
                            isObsecure.value = !isObsecure.value;
                          },
                          child: Icon(
                            isObsecure.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colorz.main,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  CustomTextButton(
                    text: "Log in",
                    onPressed: (){
                        if (nameController.text.isEmpty) {
                          setState(() {
                            // Fluttertoast.showToast(
                            //   toastLength: Toast.LENGTH_SHORT,
                            //   backgroundColor: Colorz.deleteIcon,
                            //   msg: "Please enter your name",
                            //   gravity: ToastGravity.CENTER,
                            //   textColor: Colorz.textSecondary,
                            //   timeInSecForIosWeb: 1
                            // );
                            Fluttertoast.showToast(
                              msg: "Please enter your name",
                              gravity: ToastGravity.CENTER,
                            );
                          });
                      } 
                      else if (passwordController.text.isEmpty){
                       setState(() {
                          Fluttertoast.showToast(
                            msg: "Please enter your password",
                            gravity: ToastGravity.CENTER,
                          );
                       });
                      }
                      else if(passwordController.text.length <8){
                        setState(() {
                        Fluttertoast.showToast(
                          msg: "Password must be at least 8 characters long",
                          gravity: ToastGravity.CENTER,
                        );
                        });
                      }
                       else {
                        Navigator.pushNamed(context, '/createprofile-screen');
                      }
                    
                      // else if(passwordController.text.contains(RegExp(r'[A-Z]'))){
                      //   Helper.showSnackBar(context: context,
                      //   text: "Password must contain at least one uppercase letter");
                      // }
                      // else if(passwordController.text.contains(RegExp(r'[a-z]'))){
                      //   Helper.showSnackBar(context: context,
                      //   text: "Password must contain at least one lowercase letter");
                      // }
                      // else if(passwordController.text.contains(RegExp(r'[0-9]'))){
                      //   Helper.showSnackBar(context: context,
                      //   text: "Password must contain at least one numeric character");
                      // }
                      //  else if(passwordController.text.contains(RegExp(r'[!@#\$%^&*()<>?/|}{~:]'))){
                      //   Helper.showSnackBar(context: context,
                      //   text: "Password must contain at least one special character");
                      // }
                     
                    },
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  RichText(
                        overflow: TextOverflow.clip,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'By Tapping on Continue, you agree to our ',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    color: Colorz.textSecondary,
                                  ),
                            ),
                            TextSpan(
                              text: 'Terms & Conditions, ',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    color: Colorz.textPrimary,
                                  ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  Uri url = Uri.parse(
                                      'https://taptrend.in/terms-and-conditions');
                                  if (!await launchUrl(
                                    url,
                                    mode: LaunchMode.externalApplication,
                                  )) {
                                    throw Exception('Could not launch $url');
                                  }
                                },
                            ),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    color: Colorz.textPrimary,
                                  ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  Uri url = Uri.parse(
                                      'https://taptrend.in/privacy-policy');
                                  if (!await launchUrl(
                                    url,
                                    mode: LaunchMode.externalApplication,
                                  )) {
                                    throw Exception('Could not launch $url');
                                  }
                                },
                            ),
                          ],
                        ),
                      ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

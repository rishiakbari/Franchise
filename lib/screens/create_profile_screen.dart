
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:franchise/widgets/custom_circle_icon_button.dart';
import 'package:franchise/widgets/custom_single_child_scroll_view.dart';
import 'package:franchise/widgets/custom_text_button.dart';
import 'package:image_picker/image_picker.dart';
import '../utils/colorz.dart';
import '../utils/helper.dart';
import '../widgets/choose_image_picker.dart';
import '../widgets/custom_country_code_picker.dart';
import '../widgets/custom_text_form_field.dart';

class CreateProfileScreen extends StatefulWidget {
  const CreateProfileScreen({super.key});

  static const routeName = '/createprofile-screen';

  @override
  State<CreateProfileScreen> createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController distributorCodeController = TextEditingController();

  Future<void> _showImagePickerDialog() async {
    String? source = await Helper.showCustomDialog(
      context: context,
      children: [
        const ChooseImagePicker(),
      ],
    );
   if(source == 'camera'){
    ImagePicker().pickImage(source: ImageSource.camera);
    }
    else if(source == 'gallery'){
      ImagePicker().pickImage(source: ImageSource.gallery);
    }
  }


 
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        backgroundColor: Colorz.screenBackground,
        body: CustomSingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 40.0,left: 40.0,top: 60.0),
            child: Center(
              child: Column(
                children: [
                  FittedBox(
                    child: Text(
                      "Crate Your Profile",
                      style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: Colorz.textSecondary)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40.0),
                    child: Stack(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          margin: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colorz.main,
                              width: 2.0,
                            ),
                          ),
                          child: const CircleAvatar(
                            backgroundColor: Colorz.screenBackground,
                          ),
                        ),
                        Positioned(
                          bottom: 0.0,
                          right: 0.0,
                          child: CustomCircleIconButton(
                            icon: TablerIcons.camera_filled,
                            onPressed: (){
                              _showImagePickerDialog();
                           },
                          ),
                        ),
                      ],
                    ),
                  ),
                   CustomTextFormField(
                    hintText: 'Name',
                    fillColor: Colorz.screenBackground,
                    controller: nameController,
                    outLine: false,
                    
                  ),
                  CustomTextFormField(
                    hintText: 'Phone Number',
                    fillColor: Colorz.screenBackground,
                    prefixIcon: FittedBox(
                      child: CustomCountryCodePicker(
                        initialSelection: 'IN',
                        onChanged: (value) {},
                      ),
                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    keyboardType: TextInputType.phone,
                    controller: phoneController,
                  ),
                  CustomTextFormField(
                    hintText: 'Email',
                    fillColor: Colorz.screenBackground,
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                  ),
                  CustomTextFormField(
                    hintText: 'Coupon Code (Optional)',
                    fillColor: Colorz.screenBackground,
                    controller: distributorCodeController,
                  ),
                  const SizedBox(
                    height: 7.0,
                  ),
                  CustomTextButton(
                    text: "Save Profile",
                    onPressed: () {
                        if(nameController.text.isEmpty){
                        setState(() {
                           Fluttertoast.showToast(
                            msg: "Please enter your name",
                            gravity: ToastGravity.CENTER,
                          );
                        });
                      }
                      else if(phoneController.text.isEmpty){
                        setState(() {
                            Fluttertoast.showToast(
                            msg: "Please enter your phone number",
                            gravity: ToastGravity.CENTER,
                          );
                        });
                      }
                      else if(phoneController.text.contains(RegExp(r'($[0-9]{10,12}$)'))){
                        setState(() {
                          Fluttertoast.showToast(
                            msg: "Please enter your valid number",
                            gravity: ToastGravity.CENTER,
                          );
                        });
                      }
                      if(emailController.text.isEmpty){
                        setState(() {
                           Fluttertoast.showToast(
                            msg: "Please enter your email",
                            gravity: ToastGravity.CENTER,
                          );
                        });
                      }
                      else if (emailController.text.contains(RegExp(r'^[\w\.-]+@[\w-]+\.\w{2,3}(\.\w{2,3})?$'))){
                        setState(() {
                           Fluttertoast.showToast(
                            msg: "Please enter your valid email",
                            gravity: ToastGravity.CENTER,
                          );
                        });
                      }
                      else if(distributorCodeController.text.isEmpty){
                         setState(() {
                           Fluttertoast.showToast(
                            msg: "Please enter your coupon code",
                            gravity: ToastGravity.CENTER,
                          );
                         });
                      }
                      else {
                        Navigator.pushNamed(context, '/dashboard-screen');
                      }
                    }, 
                  ),
                ],
              ),
            ),
          )
        ),
      )
    );
  }
}
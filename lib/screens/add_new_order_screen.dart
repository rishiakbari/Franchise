

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:franchise/screens/bottom_navigationb_bar_screen.dart';
import 'package:franchise/utils/helper.dart';
import 'package:franchise/widgets/choose_image_picker.dart';
import 'package:franchise/widgets/custom_icon.dart';
import 'package:franchise/widgets/custom_single_child_scroll_view.dart';
import 'package:franchise/widgets/custom_text_form_field.dart';
import 'package:image_picker/image_picker.dart';
import '../utils/colorz.dart';
import '../widgets/custom_text_button.dart';

class AddNewOrderScreen extends StatefulWidget {
  const AddNewOrderScreen({super.key});

  static const routeName = '/addneworder-screen';
  
  @override
  State<AddNewOrderScreen> createState() => _AddNewOrderScreenState();
}

class _AddNewOrderScreenState extends State<AddNewOrderScreen> {

  DateTime selectedDate = DateTime.now();
  String? valueChoose;
  static const List<String> listItem = [
    "Customized Custom Card",
    "Standard Card 1",
    "Standard Card 2",
    "Standard Card 3",
    "Standard Card 4",
    "Standard Card 5",
    "Standard Card 6",
    "Standard Card 7",
    "Standard Card 8",
    "Standard Card 9",
    "Smart Card 1",
    "Smart Card 2",
    "Smart Card 3",
    "Smart Card 4",
    "Smart Card 5",
  ];


  final TextEditingController nameOfCardController = TextEditingController();
  final TextEditingController designationOfCardController = TextEditingController();
  final TextEditingController phoneOfCardController = TextEditingController();
  final TextEditingController companyNameController = TextEditingController();
  final TextEditingController productItemController = TextEditingController();
  final TextEditingController costController = TextEditingController();
  final TextEditingController qtyController = TextEditingController();
  final TextEditingController totalController = TextEditingController();
  final TextEditingController refNumberController = TextEditingController();
  final TextEditingController dateSelectedController = TextEditingController();

  Future<void> validate()async{
    if(nameOfCardController.text.isEmpty){
      setState(() {
        Fluttertoast.showToast(
        msg: "The product quantity field is required.",
        gravity: ToastGravity.CENTER,
      );
      });
    }
    else if(designationOfCardController.text.isEmpty){
      setState(() {
        Fluttertoast.showToast(
        msg: "The product quantity field is required.",
        gravity: ToastGravity.CENTER,
      );
      });
    }
    else if(phoneOfCardController.text.isEmpty){
      setState(() {
        Fluttertoast.showToast(
        msg: "The product quantity field is required.",
        gravity: ToastGravity.CENTER,
      );
      });
    }
    else if(refNumberController.text.isEmpty){
      setState(() {
        Fluttertoast.showToast(
        msg: "The product quantity field is required.",
        gravity: ToastGravity.CENTER,
      );
      });
    }
    else if(costController.text.isEmpty){
      setState(() {
        Fluttertoast.showToast(
        msg: "The product quantity field is required.",
        gravity: ToastGravity.CENTER,
      );
      });
    }
    else if(qtyController.text.isEmpty){
      setState(() {
        Fluttertoast.showToast(
        msg: "The product quantity field is required.",
        gravity: ToastGravity.CENTER,
      );
      });
    }
    else if(totalController.text.isEmpty){
      setState(() {
        Fluttertoast.showToast(
        msg: "The product quantity field is required.",
        gravity: ToastGravity.CENTER,
      );
      });
    }
    else {
      await Navigator.pushNamed(context, '/completedorder-screen');
    }
  }

  Future<void> _showImagePickerDialog() async {
    String? source = await Helper.showCustomDialog(
      context: context,
      children: [
        const ChooseImagePicker(),
      ],
    );
   if(source == 'camera'){
    _imagePicker(ImageSource.camera);
    }
    else if(source == 'gallery'){
      _imagePicker(ImageSource.gallery);
    }
  }

   Future<void> _imagePicker(ImageSource source) async {
    try {
      final ImagePicker picker = ImagePicker();
      final XFile? pickedFile = await picker.pickImage(
        source: source,
      );
      if (pickedFile != null){
        Image.file(pickedFile as File);
      }
    } catch (e) {
      // print(e);
    }
  }

  // Future<void> _imageCrop(XFile file) async {
  //   final ImageCropper cropper = ImageCropper();
  //   final CroppedFile? croppedFile = await cropper.cropImage(
  //     sourcePath: file.path,
  //     aspectRatio: const CropAspectRatio(ratioX: 15, ratioY: 15),
  //     uiSettings: [
  //       AndroidUiSettings(
  //         toolbarColor: Colorz.screenBackground,
  //         toolbarWidgetColor: Colorz.main,
  //         backgroundColor: Colorz.screenBackground,
  //         activeControlsWidgetColor: Colorz.main,
  //         cropFrameColor: Colorz.main,
  //         cropGridColor: Colorz.main,
  //       ),
  //     ],
  //   );
  //   if (croppedFile != null) {
  //     setState(() {
  //       _pickedAvatarFile = File(croppedFile.path);
  //     });
  //   }
  // }

  //  Quantity should be change
  int _quantity = 0;
  double get _grandTotal => _quantity * 175.00;

  @override
  Widget build(BuildContext context) {
    
    // var height = MediaQuery.of(context).size.height *0.07;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colorz.screenBackground,
        drawer: const CustomDrawer(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colorz.main),
          backgroundColor: Colorz.appBar,
          title: Text(
            "Add New Order",
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
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Ref. Number",
                      style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colorz.textPrimary),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: CustomTextFormField(
                        controller: refNumberController,
                        fillColor: Colorz.screenBackground,
                        onTap: () {},
                        // height: ,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Text(
                      "Date",
                       style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colorz.textPrimary),
                    ),
                    const SizedBox(width: 8,),
                    InkWell(
                     onTap: () async{
                       final DateTime ? dateTime = await showDatePicker(
                        context: context, 
                        initialDate: selectedDate,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(5000),
                        );
                        if(dateTime != null){
                          setState(() {
                            selectedDate = dateTime;
                            });
                          }
                     },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colorz.main,)
                        ),
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const CustomIcon(
                            Icons.calendar_month_outlined,
                            color: Colorz.main,
                          ),
                        const SizedBox(width: 6,),
                        Text(
                          "${selectedDate.day}-${selectedDate.month}-${selectedDate.year}",
                            style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: Colorz.textSecondary),
                          ),
                          ],
                        ),
                      ),
                    ),   
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Text(
                      "Product",
                      style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colorz.textPrimary),
                    ),
                    const SizedBox(width: 35,),
                    Expanded(
                      child: Container(
                        height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colorz.main,width: 1)
                            ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButton(
                            dropdownColor: Colorz.screenBackground, 
                            style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: Colorz.main),  
                          hint: Text(
                          "Select Item",
                          style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colorz.textPrimary),
                          ),
                           icon: const Icon(Icons.keyboard_arrow_down),
                           isDense: true,
                           iconSize: 20,
                           iconEnabledColor: Colorz.main,
                           isExpanded: true,
                           underline: const SizedBox(),
                           value: valueChoose,
                           onChanged: (newValue){
                           setState(() {
                            valueChoose = newValue.toString();
                             });
                           },
                           items:listItem.map((valueItem) {
                           return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),);
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0,),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        "Cost (\u{20B9}${""})",
                        style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colorz.textPrimary),
                      ),
                    ),
                    const SizedBox(width: 15.0,),
                     Expanded(
                      flex: 3,
                       child: CustomTextFormField(
                        controller: costController,
                        hintText: "175.0",
                         fillColor: Colorz.screenBackground,
                         onTap: () {
                           
                         },
                       ),
                     ),
                   const  SizedBox(width: 5,),
                    Expanded(
                      child: Text(
                        "Qty",
                         style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colorz.textPrimary),
                      ),
                    ),
                   const  SizedBox(width: 5,),
                    Expanded(
                      flex: 2,
                      child: CustomTextFormField(
                        controller: qtyController,
                      hintText: "1",
                      fillColor: Colorz.screenBackground,
                      onChanged: (p0) {
                        setState(() {
                          _quantity = int.tryParse(p0) ?? 0;
                        });
                      },
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      flex: 3,
                      child: CustomTextFormField(
                        controller: totalController,
                        hintText: "Total",
                      fillColor: Colorz.screenBackground,
                      onChanged: (p0) {
                      },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0,),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                      "Name on Card",
                      style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colorz.textPrimary),
                      ),
                    ),
                    const SizedBox(width: 8,),
                    Expanded(
                      flex: 3,
                      child: CustomTextFormField(
                        controller: nameOfCardController,
                        fillColor: Colorz.screenBackground,
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0,),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Designation on Card",
                        style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colorz.textPrimary),
                      ),
                    ),
                    const SizedBox(width: 8,),
                    Expanded(
                      flex: 3,
                      child: CustomTextFormField(
                        controller: designationOfCardController,
                        fillColor: Colorz.screenBackground,
                        onTap: () {},
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 8.0,),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Phone on Card",
                        style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colorz.textPrimary),
                      ),
                    ),
                    const SizedBox(width: 8,),
                     Expanded(
                      flex: 3,
                      child:  CustomTextFormField(
                        controller: phoneOfCardController,
                        fillColor: Colorz.screenBackground,
                        onTap: () {
                          
                        },
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10.0,),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Company name",
                        style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colorz.textPrimary),
                      ),
                    ),
                    const SizedBox(width: 8.0,),
                     Expanded(
                      flex: 3,
                      child: CustomTextFormField(
                        controller: companyNameController,
                        fillColor: Colorz.screenBackground,
                        onTap: () {
                          
                        },
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10.0,),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Logo Image",
                        style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colorz.textPrimary),
                      ),
                    ),
                    const SizedBox(width: 8.0,),
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colorz.main),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: InkWell(
                                child: const Icon(
                                  TablerIcons.upload,
                                  color: Colorz.main,
                                ),
                                 onTap: () async{
                                  _showImagePickerDialog();
                                },
                              ),
                            )
                          ],
                        )
                      )
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 90),
                  child: Row(
                    children: [
                      // const SizedBox(width: 90,),
                       Flexible(
                         child: CustomTextButton(
                           text: "Submit",
                           fitted: true,
                           onPressed: ()async{
                            validate();
                           },
                         ),
                       ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0,),
                const Divider(color: Colorz.main,thickness: 1.2,),
                const SizedBox(height: 20.0,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ammount in Words:",
                        style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colorz.textSecondary,fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Thanks for your business",
                        style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colorz.textSecondary,fontWeight: FontWeight.w400),
                        )
                    ],
                  ),
                  const SizedBox(width: 30,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Subtotal:",
                        style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colorz.textSecondary),
                      ),
                      Text(
                        "Discount:",
                        style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colorz.textSecondary),
                      ),
                      Text(
                        "Delivery:",
                        style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colorz.textSecondary),
                      ),
                      Text(
                        "Tax:",
                        style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colorz.textSecondary),
                      ),
                    ],
                  ),
                  ],
                ),
                const Divider(
                  color: Colorz.textSecondary,
                  indent: 190,
                  endIndent: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Grand Total : \u{20B9} $_grandTotal",
                      style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colorz.textSecondary),
                      ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Divider(color: Colorz.main,thickness: 1.2,),
                const Padding(
                  padding:EdgeInsets.all(5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Text(
                            "Note : It was a pleasure working with you and your team.We hope you will keep us in mind for future projects.Thank You !",
                            style: TextStyle(
                              color: Colorz.textSecondary
                            )
                          ),
                        ),
                      ),
                    ],
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
//  hight: 788.0 , Width: 360.0.
import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/consts/lists.dart';
import 'package:e_commerce_app/views/widgets_common/app_widget.dart';
import 'package:e_commerce_app/views/widgets_common/bg_widget.dart';
import 'package:e_commerce_app/views/widgets_common/button.dart';
import 'package:e_commerce_app/views/widgets_common/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            //giving responsive space
            (context.screenHeight * 0.1).heightBox,
            appLogoWidget(),
            "Join the $appname".text.fontFamily(bold).white.size(18).make(),
            10.heightBox,

            Column(
              children: [
                customTextField(title: name),
                customTextField(hint: emailHint, title: email),
                customTextField(hint: passHint, title: Password),
                customTextField(hint: passHint, title: retypePass),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetPass.text.make())),
                Row(
                  children: [
                    Checkbox(
                      value: isCheck,
                      onChanged: (newValue) {
                        setState(() {
                          isCheck = newValue;
                        });
                      },
                      checkColor: whiteColor,
                      activeColor: redColor,
                    ),
                    10.widthBox,
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'I agree to the ',
                          style:
                              TextStyle(fontFamily: regular, color: fontGrey)),
                      TextSpan(
                          text: terms,
                          style:
                              TextStyle(fontFamily: regular, color: redColor))
                    ]))
                  ],
                ),
                5.heightBox,
                ourButton(
                        color: isCheck == true ? redColor : lightGrey,
                        title: signup,
                        textColor: whiteColor,
                        onPress: () {})
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                //wrapping into gesture detector
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: HaveAccount,
                      style: TextStyle(fontFamily: bold, color: fontGrey)),
                  TextSpan(
                      text: login,
                      style: TextStyle(fontFamily: bold, color: redColor))
                ])).onTap(() {
                  Get.back();
                })
              ],
            )
                .box
                .white
                .rounded
                .padding(EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make(),
          ],
        ),
      ),
    ));
  }
}

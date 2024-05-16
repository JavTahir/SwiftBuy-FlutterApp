import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/consts/lists.dart';
import 'package:e_commerce_app/views/auth_screen/signup_screen.dart';
import 'package:e_commerce_app/views/home_screen/home_screen.dart';
import 'package:e_commerce_app/views/widgets_common/app_widget.dart';
import 'package:e_commerce_app/views/widgets_common/bg_widget.dart';
import 'package:e_commerce_app/views/widgets_common/button.dart';
import 'package:e_commerce_app/views/widgets_common/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
            10.heightBox,

            Column(
              children: [
                customTextField(hint: emailHint, title: email),
                customTextField(hint: passHint, title: Password),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetPass.text.make())),
                5.heightBox,
                ourButton(
                    color: redColor,
                    title: login,
                    textColor: whiteColor,
                    onPress: () {
                      Get.to(() => HomeScreen());
                    }).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                createAccount.text.color(fontGrey).make(),
                5.heightBox,
                ourButton(
                    color: ligthgolden,
                    title: signup,
                    textColor: redColor,
                    onPress: () {
                      Get.to(() => SignUpScreen());
                    }).box.width(context.screenWidth - 50).make(),
                10.heightBox,
                loginWith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      3,
                      (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: lightGrey,
                              child: Image.asset(
                                socialIconList[index],
                                width: 30,
                              ),
                            ),
                          )),
                )
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

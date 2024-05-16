import 'package:e_commerce_app/views/widgets_common/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:e_commerce_app/consts/consts.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
            color: darkFontGrey,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_outline),
              color: darkFontGrey)
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VxSwiper.builder(
                      autoPlay: true,
                      height: 350,
                      aspectRatio: 16 / 9,
                      itemCount: 3,
                      itemBuilder: (contexr, index) {
                        return Image.asset(
                          imgFc5,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        );
                      }),
                  10.heightBox,

                  //title and details section
                  title!.text
                      .size(16)
                      .color(darkFontGrey)
                      .fontFamily(semibold)
                      .make(),
                  10.heightBox,

                  //rating
                  VxRating(
                    onRatingUpdate: (value) {},
                    normalColor: textfieldGrey,
                    selectionColor: golden,
                    count: 5,
                    size: 25,
                    stepInt: true,
                  ),
                  10.heightBox,
                  "\$30,000"
                      .text
                      .color(redColor)
                      .fontFamily(bold)
                      .size(18)
                      .make(),
                  10.heightBox,

                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          "Seller".text.white.fontFamily(semibold).make(),
                          5.heightBox,
                          "In House Brands.."
                              .text
                              .color(darkFontGrey)
                              .fontFamily(semibold)
                              .make(),
                        ],
                      )),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.message_rounded,
                          color: darkFontGrey,
                        ),
                      )
                    ],
                  )
                      .box
                      .height(60)
                      .padding(EdgeInsets.symmetric(horizontal: 16))
                      .color(textfieldGrey)
                      .make(),

                  //color section
                  20.heightBox,
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Color : ".text.color(textfieldGrey).make(),
                          ),
                          Row()
                        ],
                      ).box.padding(EdgeInsets.all(8)).make()
                    ],
                  ).box.white.shadowSm.make()
                ],
              ),
            ),
          )),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ourButton(
                color: redColor,
                onPress: () {},
                textColor: whiteColor,
                title: "Add to cart"),
          )
        ],
      ),
    );
  }
}

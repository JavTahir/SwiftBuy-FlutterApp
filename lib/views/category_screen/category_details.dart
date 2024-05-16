import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/views/category_screen/item_details.dart';
import 'package:e_commerce_app/views/widgets_common/bg_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        title: title!.text.white.fontFamily(bold).make(),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    6,
                    (index) => "Baby Clothing"
                        .text
                        .size(12)
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .makeCentered()
                        .box
                        .white
                        .rounded
                        .size(120, 60)
                        .margin(EdgeInsets.symmetric(horizontal: 4))
                        .make()),
              ),
            ),

            //items container
            20.heightBox,

            Expanded(
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 250,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          imgP5,
                          width: 200,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        "Laptop 4GB/64GB"
                            .text
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .make(),
                        10.heightBox,
                        "\$600"
                            .text
                            .color(redColor)
                            .fontFamily(bold)
                            .size(16)
                            .make(),
                        10.heightBox
                      ],
                    )
                        .box
                        .white
                        .margin(EdgeInsets.symmetric(horizontal: 4))
                        .roundedSM
                        .outerShadowSm
                        .padding(EdgeInsets.all(8))
                        .make()
                        .onTap(() {
                      Get.to(() => ItemDetails(title: "Dummy Item"));
                    });
                  }),
            )
          ],
        ),
      ),
    ));
  }
}

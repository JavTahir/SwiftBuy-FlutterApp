import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/consts/lists.dart';
import 'package:e_commerce_app/views/home_screen/components/featured_button.dart';
import 'package:e_commerce_app/views/widgets_common/home_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: context.screenWidth,
      height: context.screenHeight,
      color: lightGrey,
      child: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: lightGrey,
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  fillColor: whiteColor,
                  filled: true,
                  hintText: searchanything,
                  hintStyle: TextStyle(color: textfieldGrey)),
            ),
          ),
          10.heightBox,
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  //swiper brands
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      itemCount: slidersList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          slidersList[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(EdgeInsets.symmetric(horizontal: 8))
                            .make();
                      }),
                  10.heightBox,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        2,
                        (index) => HomeButton(
                            height: context.screenHeight * 0.15,
                            width: context.screenWidth / 2.5,
                            icon: index == 0 ? icTodaysDeal : icFlashDeal,
                            title: index == 0 ? todayDeal : flashSale)),
                  ),
                  10.heightBox,

                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      itemCount: SecondslidersList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          SecondslidersList[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(EdgeInsets.symmetric(horizontal: 8))
                            .make();
                      }),

                  10.heightBox,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        3,
                        (index) => HomeButton(
                              height: context.screenHeight * 0.15,
                              width: context.screenWidth / 3.5,
                              icon: index == 0
                                  ? icTopCategories
                                  : index == 1
                                      ? icBrands
                                      : icTopSeller,
                              title: index == 0
                                  ? topCategories
                                  : index == 1
                                      ? brand
                                      : topSellers,
                            )),
                  ),
                  20.heightBox,

                  //featured categories

                  Align(
                    alignment: Alignment.centerLeft,
                    child: featuredCategories.text
                        .color(darkFontGrey)
                        .size(18)
                        .fontFamily(semibold)
                        .make(),
                  ),
                  20.heightBox,

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          3,
                          (index) => Column(
                                children: [
                                  FeaturedButton(
                                      icon: featuredImages1[index],
                                      title: featuredTitles1[index]),
                                  10.heightBox,
                                  FeaturedButton(
                                      icon: featuredImages2[index],
                                      title: featuredTitles2[index])
                                ],
                              )).toList(),
                    ),
                  ),

                  //featured products
                  20.heightBox,

                  Container(
                    padding: EdgeInsets.all(12),
                    width: double.infinity,
                    decoration: BoxDecoration(color: redColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        featuredproduct.text.white
                            .fontFamily(bold)
                            .size(18)
                            .make(),
                        10.heightBox,
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                                6,
                                (index) => Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          imgP1,
                                          width: 150,
                                          fit: BoxFit.cover,
                                        ),
                                        10.heightBox,
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
                                            .make()
                                      ],
                                    )
                                        .box
                                        .white
                                        .margin(
                                            EdgeInsets.symmetric(horizontal: 4))
                                        .roundedSM
                                        .padding(EdgeInsets.all(8))
                                        .make()),
                          ),
                        )
                      ],
                    ),
                  ),

                  20.heightBox,

                  //third swiper
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      itemCount: SecondslidersList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          SecondslidersList[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(EdgeInsets.symmetric(horizontal: 8))
                            .make();
                      }),

                  //all products section
                  20.heightBox,
                  GridView.builder(
                      //to scroll with body scroller
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          mainAxisExtent: 300),
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              imgP5,
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            const Spacer(),
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
                                .make()
                          ],
                        )
                            .box
                            .white
                            .margin(EdgeInsets.symmetric(horizontal: 4))
                            .roundedSM
                            .padding(EdgeInsets.all(12))
                            .make();
                      })
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}

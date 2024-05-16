import 'package:e_commerce_app/consts/consts.dart';

Widget HomeButton({width, height, String? title, icon, onPress}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        icon,
        width: 26,
      ),
      10.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  ).box.white.rounded.size(width, height).make();
}

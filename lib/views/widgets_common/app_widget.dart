import 'package:e_commerce_app/consts/consts.dart';

Widget appLogoWidget() {
  //using velocity x
  return Image.asset(icAppLogo)
      .box
      .white
      .size(77, 77)
      .padding(EdgeInsets.all(8))
      .rounded
      .make();
}

import 'package:e_commerce_app/consts/consts.dart';

Widget ourButton({onPress, color, textColor, title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.all(12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
    onPressed: onPress,
    child: Text(
      title,
      style: TextStyle(color: textColor, fontFamily: semibold),
    ),
  );
}

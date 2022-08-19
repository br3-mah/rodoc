import 'package:flutter/material.dart';
import 'package:roadoc/widgets/theme/style.dart';

class CustomTabBar extends StatelessWidget {
  final int index;

  const CustomTabBar({required Key key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var key2 = null;
    var textIconColorGray2 = textIconColorGray;
    var textIconColorGray22 = textIconColorGray2;
    var key3 = null;
    var key4 = null;
    return Container(
      height: 50,
      decoration: BoxDecoration(color: primaryColor),
      child: Row(
        children: <Widget>[
          Container(
            width: 40,
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          ),
          // Expanded(
          //   child: CustomTabBarButton(
          //     text: "CHATS",
          //     textColor: index == 1 ? textIconColor : textIconColorGray2,
          //     borderColor: index == 1 ? textIconColor : Colors.transparent, key: key2,
          //   ),
          // ),
          // Expanded(
          //   child: CustomTabBarButton(
          //     text: "STATUS",
          //     textColor: index == 2 ? textIconColor : textIconColorGray,
          //     borderColor: index == 2 ? textIconColor : Colors.transparent, key: key3,
          //   ),
          // ),
          // Expanded(
          //   child: CustomTabBarButton(
          //     text: "CALLS",
          //     textColor: index == 3 ? textIconColor : textIconColorGray,
          //     borderColor: index == 3 ? textIconColor : Colors.transparent, key: key4,
          //   ),
          // ),
        ],
      ),
    );
  }
}

class CustomTabBarButton extends StatelessWidget {
  final String text;
  final Color borderColor;
  final Color textColor;
  final double borderWidth;

  const CustomTabBarButton({
    required Key key,
    required this.text,
    required this.borderColor,
    required this.textColor,
    this.borderWidth=3.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: borderColor, width: borderWidth),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
      ),
    );
  }
}

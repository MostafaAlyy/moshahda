import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'favorite.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 24,
      ),
      color: Colors.black.withOpacity((0 / 350).clamp(0, 1).toDouble()),
      child: SafeArea(
        child: Row(children: [
          Image.asset("images/moshahda_logo.png"),
          SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () => {},
                  child: Text(
                    "افلام",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  width: 12.0,
                ),
                GestureDetector(
                  onTap: () => {},
                  child: Text(
                    "مسلسلات",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  width: 12.0,
                ),
                GestureDetector(
                  onTap: () => {Get.to(Favorits())},
                  child: Text(
                    "المفضلة",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

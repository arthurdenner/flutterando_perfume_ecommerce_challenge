import 'package:flutter/material.dart';
import 'package:smart_home_app/utils/constants.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    Key key,
    @required this.isToggled,
  }) : super(key: key);

  final bool isToggled;

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _top = isToggled ? _height * .3 : _height * .15;

    return AnimatedPositioned(
      curve: Curves.easeIn,
      duration: AppDurations.short,
      top: _top,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Stan's",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Office',
                  style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "23° indoor\nDoor closed",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

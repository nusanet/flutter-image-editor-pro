import 'package:flutter/material.dart';

class BottomBarContainer extends StatelessWidget {
  final Color? colors;
  final Function? ontap;
  final String? title;
  final IconData? icons;

  const BottomBarContainer({Key? key, this.ontap, this.title, this.icons, this.colors}) : super(key: key);

  /*Widget build2(BuildContext context) {
    return XColumnCC(mainAxisSize: MainAxisSize.min)
        .list(
          [
            icons.xIcons(color: Colors.white),
            4.0.sizedHeight(),
            title.xText(color: Colors.white),
          ],
        )
        .xap(value: 8)
        .xInkWell(onTap: ontap)
        .xMaterial(
          color: colors,
        )
        .xContainer(padding: EdgeInsets.all(0), width: xwidth(context) / 5);
  }*/

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      width: MediaQuery.of(context).size.width / 5,
      child: Material(
        color: colors,
        child: InkWell(
          onTap: ontap as void Function()?,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icons,
                  color: Colors.white,
                ),
                SizedBox(height: 4.0),
                Text(
                  title!,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

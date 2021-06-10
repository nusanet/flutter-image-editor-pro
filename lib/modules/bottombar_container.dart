import 'package:coderjava_firexcode/coderjava_firexcode.dart';

class BottomBarContainer extends StatelessWidget {
  final Color colors;
  final Function ontap;
  final String title;
  final IconData icons;

  const BottomBarContainer({Key key, this.ontap, this.title, this.icons, this.colors}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    required this.imgBackGround,
    required this.icon,
    required this.imageColor,
  });

  final String image;
  final Color imgBackGround;
  final Color icon;
  final Color imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: imgBackGround,
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(image, color: imageColor),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.5708 * 2,
          child: Icon(
            color: icon,
            Icons.arrow_back_ios_new_outlined,
          ),
        )
      ],
    );
  }
}

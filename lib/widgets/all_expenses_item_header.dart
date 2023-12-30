import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    required this.imgBackGround,
    required this.icon,
  });

  final String image;
  final Color imgBackGround;
  final Color icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: imgBackGround,
            shape: const OvalBorder(),
          ),
          child: Center(
            child: SvgPicture.asset(image),
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

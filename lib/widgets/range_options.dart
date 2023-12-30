import 'package:flutter/material.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xFFF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(children: [
        const Text(
          'Monthly',
          style: TextStyle(
            color: Color(0xFF064060),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        const SizedBox(
          width: 18,
        ),
        Transform.rotate(
          angle: -1.5708,
          child: const Icon(
            color: Color(0xFF064060),
            Icons.arrow_back_ios_new_outlined,
          ),
        )
      ]),
    );
  }
}

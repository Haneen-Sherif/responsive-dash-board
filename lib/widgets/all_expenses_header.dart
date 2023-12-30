import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'All Expenses',
          style: TextStyle(
            color: Color(0xFF064060),
            fontSize: 20,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
        Expanded(
          child: SizedBox(),
        ),
        RangeOptions()
      ],
    );
  }
}

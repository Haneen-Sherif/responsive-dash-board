import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            icon: const Color(0xFF064060),
            imgBackGround: const Color(0xFFFAFAFA),
            image: itemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            itemModel.title,
            style: const TextStyle(
              color: Color(0xFF064060),
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            itemModel.date,
            style: const TextStyle(
              color: Color(0xFFAAAAAA),
              fontSize: 14,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            itemModel.price,
            style: const TextStyle(
              color: Color(0xFF4DB7F2),
              fontSize: 24,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      decoration: ShapeDecoration(
        color: const Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            icon: Colors.white,
            imgBackGround: Colors.white.withOpacity(0.10000000149011612),
            image: itemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            itemModel.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            itemModel.date,
            style: const TextStyle(
              color: Color(0xFFFAFAFA),
              fontSize: 14,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            itemModel.price,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}

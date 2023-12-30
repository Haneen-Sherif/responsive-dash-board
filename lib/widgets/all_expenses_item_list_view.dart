import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllEpensesItemListView extends StatefulWidget {
  const AllEpensesItemListView({super.key});

  @override
  State<AllEpensesItemListView> createState() => _AllEpensesItemListViewState();
}

class _AllEpensesItemListViewState extends State<AllEpensesItemListView> {
  final items = [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: "Balance",
      date: "April 2022",
      price: r"$20,129",
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: "Income",
      date: "April 2022",
      price: r"$20,129",
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: "Expenses",
      date: "April 2022",
      price: r"$20,129",
    ),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: items.asMap().entries.map((e) {
      int index = e.key;
      var item = e.value;

      return Expanded(
        child: GestureDetector(
          onTap: () {
            updateIndex(index);
          },
          child: Padding(
            padding: index == 1
                ? EdgeInsets.symmetric(horizontal: 12)
                : EdgeInsets.zero,
            child: AllExpensesItem(
              itemModel: item,
              isSelected: selectedIndex == index,
            ),
          ),
        ),
      );
    }).toList());
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex == index;
    });
  }
}

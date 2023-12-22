import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawrItemsListView extends StatefulWidget {
  const DrawrItemsListView({
    super.key,
  });

  @override
  State<DrawrItemsListView> createState() => _DraerItemsListViewState();
}

class _DraerItemsListViewState extends State<DrawrItemsListView> {
  int activeIndex = 0;

  final List<DrawerItemModel> items = [
    const DrawerItemModel(
      title: "Dashboard",
      image: Assets.imagesDashboard,
    ),
    const DrawerItemModel(
      title: "My Transaction",
      image: Assets.imagesMyTransaction,
    ),
    const DrawerItemModel(
      title: "Statistics",
      image: Assets.imagesStatistics,
    ),
    const DrawerItemModel(
      title: "Wallet Account",
      image: Assets.imagesWalletAccount,
    ),
    const DrawerItemModel(
      title: "My Investments",
      image: Assets.imagesMyInvestments,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}

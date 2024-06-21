import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neobis_flutter_figma/core/constants/app_colors.dart';
import 'package:neobis_flutter_figma/core/constants/app_svg.dart';
import 'package:neobis_flutter_figma/features/shop_app/presentation/pages/select_items.dart';
import 'package:neobis_flutter_figma/features/shop_app/presentation/widgets/custom_tab_bar.dart';
import 'package:neobis_flutter_figma/features/shop_app/presentation/widgets/my_grid_view.dart';

import '../widgets/my_button.dart';
import '../widgets/my_list_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final body = [
    const HomePageView(),
    SvgPicture.asset(AppSvg.shoppingCart),
    SvgPicture.asset(AppSvg.markerPin),
  ];
  void _onTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final _items = [
    BottomNavigationBarItem(
      icon: SvgPicture.asset(AppSvg.home, color: AppColors.textColor),
      activeIcon: SvgPicture.asset(AppSvg.home),
      label: 'Главная',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(AppSvg.shoppingCart),
      activeIcon: SvgPicture.asset(
        AppSvg.shoppingCart,
        color: Colors.black,
      ),
      label: 'Товары',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(AppSvg.markerPin),
      activeIcon: SvgPicture.asset(
        AppSvg.shoppingCart,
        color: Colors.black,
      ),
      label: 'Магазин',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 151,
        leading: Padding(
          padding: const EdgeInsets.only(top: 8, left: 16),
          child: InkWell(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Торговая точка',
                  style: TextStyle(fontSize: 13, color: AppColors.textColor),
                ),
                Row(
                  children: [
                    const Text(
                      'Проход 456а',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(width: 8),
                    SvgPicture.asset(AppSvg.icomn),
                  ],
                ),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppSvg.notification),
          ),
        ],
      ),
      body: body[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        selectedFontSize: 12,
        onTap: _onTab,
        items: _items,
        elevation: 0,
      ),
    );
  }
}

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final texts = ['Сегодня', '7 дней', 'Месяц'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTabBar(texts: texts, width: 236),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    'Календарь',
                    style: TextStyle(
                      color: AppColors.blue,
                    ),
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: MyGridView(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.myGreyColor,
              ),
              height: 96,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListButton(text: 'История продаж', svgIcon: AppSvg.calendar),
                  ListButton(text: 'Список должников', svgIcon: AppSvg.users),
                  ListButton(text: 'Мои расходы', svgIcon: AppSvg.filePlus),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                MyButton(
                  color: AppColors.blue,
                  labelText: "Добавить",
                  svgIcon: AppSvg.plusCircle,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SelectItemsScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(width: 8),
                MyButton(
                  color: AppColors.green,
                  labelText: "Продать",
                  svgIcon: AppSvg.plusPackage,
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


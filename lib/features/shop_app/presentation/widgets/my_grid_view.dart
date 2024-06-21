import 'package:flutter/material.dart';
import 'package:neobis_flutter_figma/core/constants/app_colors.dart';
import 'package:neobis_flutter_figma/core/constants/app_svg.dart';
import 'package:neobis_flutter_figma/features/shop_app/presentation/widgets/grid_view_item.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return  GridView(
              shrinkWrap: true,     
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4
                  ),
              children: const [
                GridViewItem(
                  color: AppColors.gradient1,
                  labelText: 'Касса',
                  numberText: '42 310 ₽',
                  svgIcon: AppSvg.bankNote,
                ),
                GridViewItem(
                  color: AppColors.gradient2,
                  labelText: 'Продано',
                  numberText: '120',
                  svgIcon: AppSvg.shoppingBag,
                ),
                GridViewItem(
                  color: AppColors.gradient3,
                  labelText: 'Прибыль',
                  numberText: '+32 000',
                  svgIcon: AppSvg.coinsStacked,
                  textColor: AppColors.green,
                ),
                GridViewItem(
                  color: AppColors.gradient4,
                  labelText: 'Расходы',
                  numberText: '-2400',
                  svgIcon: AppSvg.reciept,
                  textColor: Colors.red,
                ),
              ],
            );
  }
}
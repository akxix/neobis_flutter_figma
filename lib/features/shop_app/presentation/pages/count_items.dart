import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neobis_flutter_figma/core/constants/app_colors.dart';
import 'package:neobis_flutter_figma/core/constants/app_images.dart';
import 'package:neobis_flutter_figma/features/shop_app/presentation/pages/confirm_pay.dart';
import 'package:neobis_flutter_figma/features/shop_app/presentation/widgets/custom_tab_bar.dart';
import 'package:neobis_flutter_figma/features/shop_app/presentation/widgets/my_card_info.dart';

import '../../../../core/constants/app_svg.dart';

class CountItemsScreen extends StatelessWidget {
  const CountItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Указать количество',
      ),
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(AppSvg.backIcon),
        ),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: CustomTabBar(texts: [
                  'Товар 1',
                  'Товар 2',
                  'Товар 3',
                  'Товар 4',
                  'Товар 5',
                ]),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 0,
                        blurRadius: 20, // Increased blur radius
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                        child: MyCardInfo(image: AppImages.image1),
                      ),
                      Divider(
                        color: Colors.grey.shade300,
                        height: 1,
                      ),
                      const SizedBox(height: 8),
                      _sizeCount('XS'),
                      _sizeCount('S'),
                      _sizeCount('S'),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Divider(
                color: Colors.grey.shade300,
                height: 1,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Итого',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '100 402 ₽',
                      style:
                          TextStyle(color: AppColors.textColor, fontSize: 16),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ConfirmPay(),
                      ),
                    );
                  },
                  child: Container(
                    height: 56,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.myYellowColor,
                    ),
                    child: const Center(
                        child: Text(
                      'Продолжить',
                      style: TextStyle( fontSize: 18),
                    )),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _sizeCount(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
          ),
          Container(
            height: 52,
            padding: const EdgeInsets.symmetric(vertical: 4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.myGreyColor),
            child: Row(
              children: [
                IconButton(
                    style: const ButtonStyle(
                      iconSize: MaterialStatePropertyAll(16),
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      maximumSize:
                          MaterialStatePropertyAll(Size.fromRadius(16)),
                      minimumSize:
                          MaterialStatePropertyAll(Size.fromRadius(16)),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.remove,
                      color: AppColors.blue,
                    )),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      Text(
                        '12 шт',
                        style: TextStyle(
                            color: AppColors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '15 600 ₽',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColors.textColor),
                      ),
                    ],
                  ),
                ),
                IconButton(
                    style: const ButtonStyle(
                      iconSize: MaterialStatePropertyAll(16),
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      maximumSize:
                          MaterialStatePropertyAll(Size.fromRadius(16)),
                      minimumSize:
                          MaterialStatePropertyAll(Size.fromRadius(16)),
                    ),
                    onPressed: () {},
                    color: Colors.white,
                    icon: const Icon(
                      Icons.add,
                      color: AppColors.blue,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

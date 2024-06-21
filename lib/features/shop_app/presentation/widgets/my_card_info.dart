import 'package:flutter/material.dart';
import 'package:neobis_flutter_figma/core/constants/app_colors.dart';

class MyCardInfo extends StatelessWidget {
  final String image;
  const MyCardInfo({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(image),
        const SizedBox(width: 12),
        Expanded(
            child: Column(
          children: [
            const Text(
              'Off-white, Футболка из рельефной ткани',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                      color: AppColors.green,
                      borderRadius: BorderRadius.circular(20)),
                ),
                const SizedBox(width: 4),
                const Text(
                  '500 ₽',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(width: 16),
                Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                      color: AppColors.myPurpleColor,
                      borderRadius: BorderRadius.circular(20)),
                ),
                const SizedBox(width: 4),
                const Text(
                  '1 200 ₽',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Text(
                    '54шт',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.end,
                  ),
                )
              ],
            )
          ],
        ))
      ],
    );
  }
}

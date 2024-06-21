import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neobis_flutter_figma/core/constants/app_colors.dart';

import '../../../../core/constants/app_svg.dart';

class MyTextFiled extends StatelessWidget {
  const MyTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  hintText: 'Поиск',
                  hintStyle:
                      const TextStyle(color: AppColors.textColor, fontSize: 16),
                  filled: true,
                  fillColor: AppColors.backGreyColor,
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: SvgPicture.asset(AppSvg.searchIcon),
                  ),
                  suffixIcon: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: SvgPicture.asset(AppSvg.scan),
                  )),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            width: 36,
            padding: const EdgeInsets.all(6),
            decoration: const BoxDecoration(
                color: AppColors.backGreyColor,
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: SvgPicture.asset(AppSvg.settings),
          )
        ],
      ),
    );
  }
}

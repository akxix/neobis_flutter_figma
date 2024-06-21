import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neobis_flutter_figma/core/constants/app_svg.dart';

class GridViewItem extends StatelessWidget {
  final Color color;
  final String labelText;
  final String numberText;
  final String svgIcon;
  final Color textColor;
  const GridViewItem({
    super.key,
    required this.color,
    required this.labelText,
    required this.numberText,
    required this.svgIcon,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: const TextStyle(fontSize: 14,),
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                numberText,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: textColor,
                ),
              ),
              SvgPicture.asset(svgIcon,color:svgIcon == AppSvg.shoppingBag? Colors.grey.shade400 :svgIcon== AppSvg.reciept ? Colors.grey.shade400:null,),
            ],
          )
        ],
      ),
    );
  }
}

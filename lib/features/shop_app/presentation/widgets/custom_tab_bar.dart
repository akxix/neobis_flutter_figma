import 'package:flutter/material.dart';
import 'package:neobis_flutter_figma/core/constants/app_colors.dart';

class CustomTabBar extends StatefulWidget {
  final List<String> texts;
  final double? width;
  const CustomTabBar({
    super.key,
    required this.texts,
    this.width
  });

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int _currentIndex = 0;

  void _selectTab(int index){
    setState(() {
      _currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: widget.width,
      child: ListView.builder(
          itemCount: widget.texts.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap:()=> _selectTab(index),
              child: Container(
                decoration: BoxDecoration(
                    color:_currentIndex == index ? AppColors.myblackColor: Colors.transparent,
                    borderRadius: BorderRadius.circular(25)),
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                child: Text(
                  widget.texts[index],
                  style: TextStyle(
                      color:_currentIndex == index ? Colors.white : AppColors.textColor),
                ),
              ),
            );
          }),
    );
  }
}

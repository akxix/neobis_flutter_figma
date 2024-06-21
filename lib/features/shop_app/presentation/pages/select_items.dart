import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neobis_flutter_figma/core/constants/app_svg.dart';
import 'package:neobis_flutter_figma/features/shop_app/presentation/widgets/custom_tab_bar.dart';
import 'package:neobis_flutter_figma/features/shop_app/presentation/widgets/my_card.dart';
import 'package:neobis_flutter_figma/features/shop_app/presentation/widgets/my_text_field.dart';

class SelectItemsScreen extends StatefulWidget {
  const SelectItemsScreen({super.key});

  @override
  State<SelectItemsScreen> createState() => _SelectItemsScreenState();
}

class _SelectItemsScreenState extends State<SelectItemsScreen> {
  final List<String> texts = ['Моя точка', 'Проход 12г', 'Контейнер 454'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Выбрать Товары'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(AppSvg.backIcon),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
            child: MyTextFiled(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: CustomTabBar(texts: texts),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return MyCard(index: index,image: 'assets/images/Image${index%4+1}.png',);
              },
            ),
          ),
        ],
      ),
    );
  }
}

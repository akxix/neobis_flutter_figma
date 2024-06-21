import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neobis_flutter_figma/core/constants/app_colors.dart';
import 'package:neobis_flutter_figma/core/constants/app_images.dart';
import 'package:neobis_flutter_figma/core/constants/app_svg.dart';
import 'package:neobis_flutter_figma/features/shop_app/presentation/pages/count_items.dart';
import 'package:neobis_flutter_figma/features/shop_app/presentation/widgets/my_card_info.dart';
class MyCard extends StatefulWidget {
  final int index;
  final String image;
  const MyCard({
    super.key,
    required this.index, required this.image,
  });

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  bool isSelected = false;
  void select(bool? newValue){
    setState(() {
      isSelected = newValue!;
    });
    showBottomSheet(context: context, builder: (BuildContext context){
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(height: 1,color: Colors.grey.shade300,),
          Container(
              height: 72,
              color: Colors.white,
              width: MediaQuery.sizeOf(context).width,
              padding:const  EdgeInsets.symmetric(horizontal: 16,vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Stack(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundImage: AssetImage(AppImages.image1,),
                          
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.only(left: 32),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 18,
                            backgroundImage: AssetImage(AppImages.image2,),
                            
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 64),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 18,
                            backgroundImage: AssetImage(AppImages.image3,),
                            
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 95,bottom: 14),
                        child: CircleAvatar(
                          radius: 13,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 11,
                            backgroundColor: AppColors.blue,
                            child: Text('+2',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color:Colors.white),),
                          ),
                        ),
                      ),
                    ],
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CountItemsScreen(),
                      ),
                    );
                    },
                    child:Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.myYellowColor ,
                    ),
                    padding:const  EdgeInsets.symmetric(horizontal: 16,vertical: 12),
                    child: Row(children: [
                    const Text('Выбрать 5 ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                    SvgPicture.asset(AppSvg.arrow)
                  ]),))
                ],
              ),
          ),
        ],
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      child: Container(
        height: 154,
        padding: const EdgeInsets.all(11),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          border: Border.all(
              color: isSelected ? AppColors.blue : Colors.transparent),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '№54931',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 20,
                  height: 20,
                  child: Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    activeColor: AppColors.blue,
                    value: isSelected,
                    onChanged:select
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            MyCardInfo(
              image: widget.image,
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                const SizedBox(width: 80),
                SvgPicture.asset(AppSvg.cube),
                const SizedBox(width: 4),
                const Text(
                  'Склад',
                  style: TextStyle(color: AppColors.textColor),
                ),
                const Expanded(
                  child: Text(
                    '120 шт',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

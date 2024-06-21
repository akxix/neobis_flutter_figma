import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neobis_flutter_figma/core/constants/app_svg.dart';

import '../../../../core/constants/app_colors.dart';

class ConfirmPay extends StatelessWidget {
  const ConfirmPay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text('Подтверждение оплаты'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(AppSvg.backIcon),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height-320,
              child: Column(
                children: [
                  const SizedBox(
                    height: 72,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                      child: TextField(
                                  decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.all(16),
                        hintText: 'Покупатель',
                        hintStyle:
                            TextStyle(color: AppColors.textColor, fontSize: 16),
                        filled: true,
                        fillColor: AppColors.backGreyColor,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide.none,
                        ),
                        
                        ),
                                ),
                    ),
                  ),
                  const SizedBox(
                    height: 72,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                      child: TextField(
                                  decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.all(16),
                        hintText: '(000) 000 000',
                        hintStyle:
                            TextStyle(color: AppColors.textColor, fontSize: 16),
                        filled: true,
                        fillColor: AppColors.backGreyColor,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: Padding(
                          padding:
                              EdgeInsets.only(top: 16,left: 16,right: 4,bottom: 16),
                          child: Text('+996',style: TextStyle(fontSize: 16),),
                        ),    
                        ),
                                ),
                    ),
                  ),
                  const SizedBox(
                    height: 72,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16,right: 16,top: 8,bottom: 4),
                      child: TextField(
                                  decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.all(16),
                        hintText: 'Cумма',
                        hintStyle:
                            TextStyle(color: AppColors.textColor, fontSize: 16),
                        filled: true,
                        fillColor: AppColors.backGreyColor,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide.none,
                        ),
                        
                        ),
                                ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Продать в долг',style: TextStyle(
                         fontSize: 18,fontWeight: FontWeight.w700
                        ),),
                  
                        Switch(value: false, onChanged: (newValue){},
                        )
                      ],
                    ),
                  )
                ],
              ),
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
                        'Количество',
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '256 шт',
                        style:
                            TextStyle(color: AppColors.textColor, fontSize: 16),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Сумма',
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '100 400 ₽',
                        style:
                            TextStyle(color: AppColors.textColor, fontSize: 16),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Скидка',
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '+ Добавить',
                        style:
                            TextStyle(color: AppColors.blue, fontSize: 16,fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Итого к оплате',
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
                    },
                    child: Container(
                      height: 56,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.myDarkGreyColor,
                      ),
                      child:  Center(
                          child: Text(
                        'Продать',
                        style: TextStyle( fontSize: 18,color: Colors.grey.shade100),
                      )),
                    ),
                  ),
                ),
              ],
            )
          
            
        ]),
      ),
    );
  }
}
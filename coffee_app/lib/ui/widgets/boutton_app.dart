import 'package:coffee_app/constants/app_color.dart';
import 'package:flutter/material.dart';

class BottonsApp{

  static GestureDetector btnMeduim({void Function()? onTap, String? textBtn, Color? btnBgColor, Color? btnBorderColor, Color? btnTextColor, double? btnRaduis}){
    return GestureDetector(
                  onTap:onTap,
                  child:Container(
                  height:50,
                  width: 150,
                  decoration: BoxDecoration(
                    color:btnBgColor?? AppColors.white_color,
                    borderRadius: BorderRadius.circular(btnRaduis??50),
                    border: Border.all(color:btnBorderColor??AppColors.primary_color)
                  ),
                  child: Center(
                    child: Text(
                      '$textBtn',
                      style: TextStyle(
                        color:btnTextColor??AppColors.primary_color,
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                )
                );
  } 


  static GestureDetector btnLarge({String? btnLogoPath,void Function()? onTap, String? textBtn, Color? btnBgColor, Color? btnBorderColor, Color? btnTextColor, double? btnRaduis}){
    return GestureDetector(
              onTap:onTap,
              child:Center(
              child: Container(
                height: 50,
                width: 315,
                decoration: BoxDecoration(
                    color:btnBgColor??AppColors.primary_color,
                    borderRadius: BorderRadius.circular(btnRaduis??50),
                    border: Border.all(color:btnBorderColor??AppColors.primary_color)
                  ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    btnLogoPath!=null?Image.asset('$btnLogoPath',scale: 4,):Container(),
                    Text(
                      '$textBtn',
                      style: TextStyle(
                        color: btnTextColor??AppColors.white_color,
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),
              ),
            )
            );
  } 

}
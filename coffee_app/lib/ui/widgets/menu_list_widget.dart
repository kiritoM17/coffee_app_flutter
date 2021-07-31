import 'package:coffee_app/constants/app_color.dart';
import 'package:flutter/material.dart';

class MenuListCardWidget extends StatelessWidget {
  final String? titleText;
  final String? imagePath;

  MenuListCardWidget({Key? key, this.imagePath, this.titleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 98,
              decoration: BoxDecoration(
                color: AppColors.white_color,
                border: Border(
                  bottom: BorderSide(
                    width:0.35,
                    color:AppColors.secondary_color,
                  )
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Container(
                    height: 60,
                    width: 100,
                    child:GestureDetector(
                      onTap:(){},
                      child:Image.asset('$imagePath',scale: 4,),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '$titleText',
                          style: TextStyle(
                            color: AppColors.secondary_color,
                            fontSize: 20,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        Container(),
                        Container(),
                        GestureDetector(
                          onTap:(){},
                          child:Icon(Icons.arrow_forward_ios, color:AppColors.secondary_color, size:25)
                        ),
                      ],
                    ),
                  )
                ]
              ),
            );
  }
}
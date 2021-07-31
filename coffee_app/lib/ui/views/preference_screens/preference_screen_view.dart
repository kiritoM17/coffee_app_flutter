import 'package:coffee_app/constants/app_color.dart';
import 'package:coffee_app/ui/widgets/boutton_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PreferenceScreenView extends StatefulWidget {
  PreferenceScreenView({Key? key}) : super(key: key);

  @override
  _PreferenceScreenViewState createState() => _PreferenceScreenViewState();
}

class _PreferenceScreenViewState extends State<PreferenceScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white_color,
      appBar:AppBar(
        backgroundColor: AppColors.white_color,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios,color: AppColors.primary_color,),
        ),
        title: Text(
          'Preferences',
           style: TextStyle(
           color: AppColors.primary_color,
           fontSize: 22,
           fontWeight: FontWeight.w500
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:[
            Container(
              height: 183,
              decoration:BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/header_preference.png'),
                  fit: BoxFit.fill
                ),
              ),
              child: Center(
                child: Image.asset('assets/images/menus/macciato.png', width: 66, height: 98,), 
              ),
            ),
            Container(
              height: 78,
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Macciato',
                        style: TextStyle(
                          color:AppColors.thirt_color,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '36 EGP',
                        style: TextStyle(
                          color:AppColors.thirt_color,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '1',
                            style: TextStyle(
                              color:AppColors.thirt_color,
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 48,
                            height:34,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color:AppColors.thirt_color,
                                width:1,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30)
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '-',
                                style: TextStyle(
                                  color:AppColors.thirt_color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 48,
                            height:34,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color:AppColors.thirt_color,
                                width:1,
                              ),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomRight: Radius.circular(30)
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '+',
                                style: TextStyle(
                                  color:AppColors.thirt_color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
             Container(
              height: 78,
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Text(
                    'Size',
                    style: TextStyle(
                      color:AppColors.thirt_color,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset('assets/images/sizedbox/small/macciato.svg'),
                      SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset('assets/images/sizedbox/meduim/macciato.svg'),
                      SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset('assets/images/sizedbox/large/large.svg'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 78,
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Sugar',
                    style: TextStyle(
                      color:AppColors.thirt_color,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset('assets/images/sugars/zero.svg'),
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset('assets/images/sugars/one.svg'),
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset('assets/images/sugars/two.svg'),
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset('assets/images/sugars/three.svg'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 78,
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Additions',
                    style: TextStyle(
                      color:AppColors.thirt_color,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/additions/fill.svg'),
                      SizedBox(
                        width: 30,
                      ),
                      SvgPicture.asset('assets/images/additions/fill_1.svg'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Total:',
                  style: TextStyle(
                    color:AppColors.secondary_color,
                    fontWeight: FontWeight.w400,
                    fontSize: 28,
                  ),
                ),
                Text(
                  '42 EGP',
                  style: TextStyle(
                    color:AppColors.thirt_color,
                    fontWeight: FontWeight.w400,
                    fontSize: 28,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            BottonsApp.btnLarge(
              textBtn:'Add to cart'
            ),
            SizedBox(
              height: 20,
            ),
          
          ]
        ),
      ),
    );
  }
}
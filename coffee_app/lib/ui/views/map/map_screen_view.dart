import 'package:coffee_app/constants/app_color.dart';
import 'package:coffee_app/ui/widgets/boutton_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MapScreenView extends StatefulWidget {
  MapScreenView({Key? key}) : super(key: key);

  @override
  _MapScreenViewState createState() => _MapScreenViewState();
}

class _MapScreenViewState extends State<MapScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: 250,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color:AppColors.white_color,
          borderRadius: BorderRadius.circular(30) 
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[
            SizedBox(
              height:10,
            ),
            Row(
              children: [
                SizedBox(
                  width:20,
                ),
                Text(
                  'Starbucks',
                  style: TextStyle(
                    color:AppColors.thirt_color,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height:20,
            ),
            Row(
              children: [
                SizedBox(
                  width:20,
                ),
                SvgPicture.asset('assets/images/map/distance.svg'),
                SizedBox(
                  width:10,
                ),
                Text(
                  '4,23 mi',
                  style: TextStyle(
                    color:AppColors.thirt_color,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                 SizedBox(
                  width:50,
                ),
                SvgPicture.asset('assets/images/map/time.svg'),
                SizedBox(
                  width:10,
                ),
                Text(
                  '20 min',
                  style: TextStyle(
                    color:AppColors.thirt_color,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height:30,
            ),
            BottonsApp.btnLarge(
              onTap: (){
                Navigator.pushNamed(context, '/home_screen');
              },
              textBtn:'View Menu'
            ),
            SizedBox(
              height:20,
            ),
            Row(
              children: [
                SizedBox(
                  width:20,
                ),
                Text(
              'Address',
              style: TextStyle(
                color:AppColors.thirt_color,
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
            ],
            ),
            Row(children: [
              SizedBox(
                  width:20,
                ),
              Text(
              '3 Michel Bakhoum\nDokki, Cairo',
              style: TextStyle(
                color:AppColors.thirt_color,
                fontWeight: FontWeight.w400,
                fontSize: 17,
              ),
            ),
          
            ],)
          ]
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration:BoxDecoration(
            image:DecorationImage(
              image:AssetImage('assets/images/map.png') 
            )
          ),
        ),
      ),
    );
  }
}
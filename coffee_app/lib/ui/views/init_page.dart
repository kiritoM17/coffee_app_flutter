import 'package:coffee_app/constants/app_color.dart';
import 'package:flutter/material.dart';

class InitScreenView extends StatefulWidget {
  InitScreenView({Key? key}) : super(key: key);

  @override
  _InitScreenViewState createState() => _InitScreenViewState();
}

class _InitScreenViewState extends State<InitScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:[
            SizedBox(
              height: 30,
            ),
            Image.asset('assets/images/artwork.png'),
            SizedBox(
              height: 10,
            ),
            Text(
              'Get the best \ncoffee in town!',
              style: TextStyle(
                color:AppColors.secondary_color,
                fontWeight: FontWeight.w500,
                fontSize: 32,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height:50,
                  width: 150,
                  decoration: BoxDecoration(
                    color:AppColors.primary_color,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: AppColors.white_color,
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap:(){
                    Navigator.pushNamed(context, '/auth/login_screen');
                  },
                  child:Container(
                  height:50,
                  width: 150,
                  decoration: BoxDecoration(
                    color:AppColors.white_color,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color:AppColors.primary_color)
                  ),
                  child: Center(
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        color: AppColors.primary_color,
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                )
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 50,
                width: 315,
                decoration: BoxDecoration(
                    color:AppColors.white_color,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color:AppColors.blue_color)
                  ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/google_logo.png',scale: 4,),
                    Text(
                      'Connect with Google',
                      style: TextStyle(
                        color: AppColors.blue_color,
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}
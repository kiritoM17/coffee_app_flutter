import 'package:coffee_app/constants/app_color.dart';
import 'package:coffee_app/ui/widgets/boutton_app.dart';
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
              height: 40,
            ),
            Text(
              'Get the best \ncoffee in town!',
              style: TextStyle(
                color:AppColors.home_intro_text,
                fontWeight: FontWeight.w400,
                fontSize: 32,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: EdgeInsets.only(
                left:30,
                right:30
              ),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BottonsApp.btnMeduim(
                  onTap:(){
                    Navigator.pushNamed(context, '/auth/register_screen');
                  },
                  textBtn: 'Register',
                  btnBgColor: AppColors.primary_color,
                  btnTextColor: AppColors.white_color,
                ),
                BottonsApp.btnMeduim(
                  onTap:(){
                    Navigator.pushNamed(context, '/auth/login_screen');
                  },
                  textBtn: 'Log In'
                ),
               ],
            ),
            ),
            SizedBox(
              height: 20,
            ),

            BottonsApp.btnLarge(
              textBtn: 'Connect with Google',
              btnTextColor: AppColors.blue_color,
              btnBgColor: AppColors.white_color,
              btnBorderColor: AppColors.blue_color,
              btnLogoPath: 'assets/images/google_logo.png'
            ),
          ]
        ),
      ),
    );
  }
}
import 'package:coffee_app/constants/app_color.dart';
import 'package:coffee_app/ui/widgets/boutton_app.dart';
import 'package:flutter/material.dart';

class RegisterScreenView extends StatefulWidget {
  RegisterScreenView({Key? key}) : super(key: key);

  @override
  _RegisterScreenViewState createState() => _RegisterScreenViewState();
}

class _RegisterScreenViewState extends State<RegisterScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white_color,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios,color: AppColors.primary_color,),
        ),
        title:Text(
          'Register',
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
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Create a user account',
                style: TextStyle(
                  color: AppColors.secondary_color,
                  fontSize: 32,
                  fontWeight: FontWeight.w400
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding:EdgeInsets.only(
                left: 40,
                right: 40
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    enabled: true,
                    labelText: 'Names',
                    hintText: 'Enter your names',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:EdgeInsets.only(
                left: 40,
                right: 40
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    enabled: true,
                    labelText: 'Email',
                    hintText: 'Enter your email adress',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:EdgeInsets.only(
                left: 40,
                right: 40
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    enabled: true,
                    labelText: 'Phone number',
                    hintText: 'Enter your phone number',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:EdgeInsets.only(
                left: 40,
                right: 40
              ),
              child: Center(
                child: TextField(
                  obscuringCharacter: '*',
                  obscureText: true,
                  decoration: InputDecoration(
                    enabled: true,
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    suffixIcon: GestureDetector(
                      onTap:(){

                      },
                      child:Icon(Icons.remove_red_eye_rounded,color:AppColors.primary_color)
                    )
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:EdgeInsets.only(
                left: 40,
                right: 40
              ),
              child: Center(
                child: TextField(
                  obscuringCharacter: '*',
                  obscureText: true,
                  decoration: InputDecoration(
                    enabled: true,
                    labelText: 'Confirm password',
                    hintText: 'Enter your password again',
                    suffixIcon: GestureDetector(
                      onTap:(){

                      },
                      child:Icon(Icons.remove_red_eye_rounded,color:AppColors.primary_color)
                    )
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 40,
                right: 40
              ),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap:(){
                    Navigator.pushNamed(context, '/auth/login_screen');
                  },
                  child:Text(
                'are you registered ?',
                style: TextStyle(
                  color: AppColors.secondary_color,
                  fontSize: 14,
                  fontWeight: FontWeight.w400
                ),
              )
                )
              ],
            ),
            ),
            SizedBox(
              height: 50,
            ),
            BottonsApp.btnLarge(
              textBtn: 'Register'
            ),
          ]
        ),
      ),
    );
  }
}
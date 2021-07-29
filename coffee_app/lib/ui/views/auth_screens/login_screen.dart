import 'package:coffee_app/constants/app_color.dart';
import 'package:flutter/material.dart';

class LoginScreenView extends StatelessWidget {
  const LoginScreenView({Key? key}) : super(key: key);

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
          child: Icon(Icons.arrow_back,color: AppColors.primary_color,),
        ),
        title:Text(
          'Login',
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
                'Welcome back!',
                style: TextStyle(
                  color: AppColors.secondary_color,
                  fontSize: 32,
                  fontWeight: FontWeight.w500
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
                  obscuringCharacter: '*',
                  obscureText: true,
                  decoration: InputDecoration(
                    enabled: true,
                    labelText: 'Password',
                    hintText: 'Enter your password',
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

                  },
                  child:Text(
                'Forgot password?',
                style: TextStyle(
                  color: AppColors.secondary_color,
                  fontSize: 14,
                  fontWeight: FontWeight.w500
                ),
              )
                )
              ],
            ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: 50,
                width: 315,
                decoration: BoxDecoration(
                    color:AppColors.primary_color,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color:AppColors.primary_color)
                  ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Image.asset('assets/images/google_logo.png',scale: 4,),
                    Text(
                      'Log In',
                      style: TextStyle(
                        color: AppColors.white_color,
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
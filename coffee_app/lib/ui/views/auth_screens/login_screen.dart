import 'package:coffee_app/constants/app_color.dart';
import 'package:coffee_app/ui/widgets/boutton_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

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
          child: Icon(Icons.arrow_back_ios,color: AppColors.primary_color,),
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

                  },
                  child:Text(
                'Forgot password?',
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
              onTap:(){
                Navigator.pushNamed(context, '/home_screen');
              },
              textBtn: 'Log In',
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text:
                  "Don???t have an account? ",
                   style: TextStyle(
                      color: AppColors.secondary_color,
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                  ),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = ()=>Navigator.pushNamed(context, '/auth/register_screen'),
                          text: "Register",
                          style: TextStyle(
                      color: AppColors.primary_color,
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                  ),
                      )
                    ],
              )
            ),
          ]
        ),
      ),
    );
  }
}
import 'package:coffee_app/constants/meta_term_app.dart';
import 'package:coffee_app/ui/views/auth_screens/login_screen.dart';
import 'package:coffee_app/ui/views/auth_screens/register_screen.dart';
import 'package:coffee_app/ui/views/home_screen.dart';
import 'package:coffee_app/ui/views/init_page.dart';
import 'package:coffee_app/ui/views/map/map_screen_view.dart';
import 'package:coffee_app/ui/views/preference_screens/preference_screen_view.dart';
import 'package:coffee_app/ui/views/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: MetaTermApp.app_name,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      initialRoute: '/splash_screen',
      routes: <String,WidgetBuilder>{
        '/splash_screen': (BuildContext context) => new SplashScreenView(),
        '/init_screen': (BuildContext context) => new InitScreenView(),
        '/auth/login_screen': (BuildContext context) => new LoginScreenView(),
        '/auth/register_screen': (BuildContext context)=> new RegisterScreenView(),
        '/home_screen': (BuildContext context) => new HomeScreenView(),
        '/preference/preference_screen': (BuildContext context) => new PreferenceScreenView(),
        '/map/map_screen': (BuildContext context) => new MapScreenView()
      },
    );
  }
}

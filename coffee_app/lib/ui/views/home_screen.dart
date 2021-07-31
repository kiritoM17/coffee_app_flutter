import 'package:coffee_app/constants/app_color.dart';
import 'package:coffee_app/ui/widgets/menu_list_widget.dart';
import 'package:flutter/material.dart';

class HomeScreenView extends StatefulWidget {
  HomeScreenView({Key? key}) : super(key: key);

  @override
  _HomeScreenViewState createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white_color,
      appBar:AppBar(
        elevation:3 ,
        centerTitle: true,
        backgroundColor: AppColors.white_color,
        title: Text(
          'Home',
           style: TextStyle(
           color: AppColors.primary_color,
           fontSize: 22,
           fontWeight: FontWeight.w500
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:[
            MenuListCardWidget(titleText:'Espresso',imagePath:'assets/images/menus/espresso.png'),
            MenuListCardWidget(titleText:'Cappuccino',imagePath:'assets/images/menus/cappuccino.png'),
            MenuListCardWidget(titleText:'Macciato',imagePath:'assets/images/menus/macciato.png'),
            MenuListCardWidget(titleText:'Mocha',imagePath:'assets/images/menus/mocha.png'),
            MenuListCardWidget(titleText:'Latte',imagePath:'assets/images/menus/latte.png'),

          ]
        ),
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(
          color: AppColors.white_color,
          boxShadow: [
            BoxShadow(
              color:AppColors.thirt_color,
              blurRadius:15.0,
              spreadRadius: 5.0,
              offset: Offset(
                15,
                15,
              ),

            )
          ]
        ),
        height: 70,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){},
              child: Icon(Icons.home,color: AppColors.secondary_color,size: 25,),
            ),
            GestureDetector(
              onTap: (){},
              child: Icon(Icons.location_on_outlined,color: AppColors.secondary_color,size: 25,),
            ),
            GestureDetector(
              onTap: (){},
              child: Icon(Icons.fastfood_outlined,color: AppColors.secondary_color,size: 25,),
            ),
            GestureDetector(
              onTap: (){},
              child: Icon(Icons.perm_identity,color: AppColors.secondary_color,size: 25,),
            ),
        ],
      ),
    )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_actividad/constants/colors.dart';
import 'package:flutter_actividad/models/restaurant.dart';
import 'package:flutter_actividad/screens/home/widget/food_list.dart';
import 'package:flutter_actividad/screens/home/widget/food_list_view.dart';
import 'package:flutter_actividad/screens/home/widget/restaurant_info.dart';
import 'package:flutter_actividad/widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final pageController = PageController();
  final restaurant = Restaurant.generateRestaurant();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(Icons.arrow_back_ios_outlined, Icons.search_outlined),
          RestaurantInfo(),
          FoodList(selected, (int index) {
            setState(() {
              selected = index;
            });
            pageController.jumpToPage(index);
          }, restaurant),
          Expanded(
              child: FoodListView(selected, (int index) {
            setState(() {
              selected = index;
            });
          },
          pageController,
          restaurant,
          ))
        ],
      ),
    );
  }
}

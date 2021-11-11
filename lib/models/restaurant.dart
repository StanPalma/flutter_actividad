import 'package:flutter_actividad/models/food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;
  Restaurant(this.name, this.waitTime, this.distance, this.label, this.logoUrl,
      this.desc, this.score, this.menu);

  static Restaurant generateRestaurant() {
    return Restaurant('Burger Restarante', '20-30 min', '5Km', 'Restaurante',
      'assets/images/logo_restaurante.png', 'Rica comida rapida', 4.3, {
      'Recomendado': Food.generateRecommendFoods(),
      'Popular' : Food.generatePopularFoods(),
      'Fideos' : [],
      'Pizza' : [], 
    });
  }
}

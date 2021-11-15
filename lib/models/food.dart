class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool hightLight;
  Food(this.imgUrl, this.desc, this.name, this.waitTime, this.score, this.cal,
      this.price, this.quantity, this.ingredients, this.about,
      {this.hightLight = false});

  static List<Food> generateRecommendFoods() {
    return [
      Food(
          'assets/images/hot-dog.jpg',
          'Recomendado',
          'Hot Dog',
          '5 min',
          4.5,
          '250 Kcal',
          2.25,
          1,
          [
            {'Salchicha': 'assets/images/hd_salchicha.jpg'},
            {'Pan': 'assets/images/hd_pan.jpg'},
          ],
          'Hot dog deliciosa, caliente con salchicha de excelente calidad',
          hightLight: true)
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
          'assets/images/hamburger.jpg',
          'Popular',
          'Hamburguesa',
          '8 min',
          4.5,
          '350 Kcal',
          5.25,
          1,
          [
            {
              'Bollo de sesamo': 'assets/images/hamb_bollo.jpg',
            },
            {'Pepinillos': 'assets/images/hamb_pepinillos.jpeg'},
            {'Tomates': 'assets/images/hamb_tomate.jpg'},
            {'Carne': 'assets/images/hamb_carne.jpg'},
            {'Queso': 'assets/images/hamb_queso.jpg'},
            {'Lechuga': 'assets/images/hamb_lechuga.jpg'},
          ],
          'Hamburguesa deliciosa, caliente con carne a la parrilla para deleitar su paladar',
          hightLight: true),
          Food(
          'assets/images/torta.jpg',
          'Popular',
          'Torta',
          '8 min',
          4.5,
          '250 Kcal',
          3.25,
          1,
          [
            {'Jamón': 'assets/images/torta_jamon.jpg'},
            {'Lechuga': 'assets/images/torta_lechuga.jpg'},
            {'Queso rallado': 'assets/images/torta_queso_rallado.jpg'},
            {'Queso chedar': 'assets/images/torta_queso.jpg'},
          ],
          'Torta mexicana deliciosa, con ingredientes que le hacen sentir bien',
          hightLight: true),
    ];
  }
}

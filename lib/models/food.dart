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
      Food('assets/images/hamburger.jpg', 'Recomendado', 'Hamburguesa', '10 min', 4.5, '350 Kcal', 5.25, 1,
        [
          {
            'Bollo de sesamo' : 'assets/images/ham_bollo.jpg',
          },
          {
            'Pepinillos' : 'assets/hamb_pepinillos.jpeg'
          },
          {
            'Tomates' : 'assets/hamb_tomate.jpg'
          },
          {
            'Carne': 'assets/images/hamb_carne.jpg'
          },
          {
            'Queso': 'assets/images/hamb_queso.jpg'
          },
          {
            'Lechuga': 'assets/images/hamb_lechuga.jpg'
          },
        ], 'Carne a la parrilla', hightLight: true)
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food('assets/images/hamburger.jpg', 'Popular', 'Hamburguesa', '10 min', 4.5, '350 Kcal', 5.25, 1,
        [
          {
            'Bollo de sesamo' : 'assets/images/ham_bollo.jpg',
          },
          {
            'Pepinillos' : 'assets/hamb_pepinillos.jpeg'
          },
          {
            'Tomates' : 'assets/hamb_tomate.jpg'
          },
          {
            'Carne': 'assets/images/hamb_carne.jpg'
          },
          {
            'Queso': 'assets/images/hamb_queso.jpg'
          },
          {
            'Lechuga': 'assets/images/hamb_lechuga.jpg'
          },
        ], 'Carne a la parrilla', hightLight: true)
    ];
  }
}

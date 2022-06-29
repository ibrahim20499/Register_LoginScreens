class AppBanner {
  final int id;
  final String image;

  final String title;
  final String description;

  AppBanner(this.id, this.image, this.title, this.description);
}

List<AppBanner> appbannarList = [
  AppBanner(1, 'asset/food2.png', 'Get Food Delivery to your doorstep asap',
      'We have young and professional delivery team that will bring your food as soon as possible to your doorstep'),
  AppBanner(2, 'asset/food3.png', 'Buy any Food from your favorite restaurant',
      'We are constantly adding your favourite restaurant throughout the territory and arround your area carefully selected'),
];

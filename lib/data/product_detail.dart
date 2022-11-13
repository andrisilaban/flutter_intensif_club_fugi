class ProductDetail {
  final String urlImage;
  final String name;
  final int price;
  final double ratting;
  final String desc;

  ProductDetail(
      {required this.urlImage,
      required this.name,
      required this.price,
      required this.ratting,
      required this.desc});
}

final List<ProductDetail> listProducDetail = [
  ProductDetail(
      urlImage: 'assets/images/chair.png',
      name: 'Stylish Chair',
      price: 170,
      ratting: 4.8,
      desc: 'Curabitur commodo turpis id placerat mattis. Mauris '
          'euismod arcu id orci fringilla sodales. Proin congue '
          'eleifend ipsum, eleifend porttitor mi ullamcorper.'),
  ProductDetail(
      urlImage: 'assets/images/chair2.png',
      name: 'Modern Table',
      price: 75,
      ratting: 4.9,
      desc: 'Curabitur commodo turpis id placerat mattis. Mauris '
          'euismod arcu id orci fringilla sodales. Proin congue '
          'eleifend ipsum, eleifend porttitor mi ullamcorper.'),
  ProductDetail(
      urlImage: 'assets/images/chair3.png',
      name: 'Wooden Console',
      price: 240,
      ratting: 4.7,
      desc: 'Curabitur commodo turpis id placerat mattis. Mauris '
          'euismod arcu id orci fringilla sodales. Proin congue '
          'eleifend ipsum, eleifend porttitor mi ullamcorper.'),
  ProductDetail(
      urlImage: 'assets/images/chair4.png',
      name: 'Brown Armchair',
      price: 210,
      ratting: 4.9,
      desc: 'Curabitur commodo turpis id placerat mattis. Mauris '
          'euismod arcu id orci fringilla sodales. Proin congue '
          'eleifend ipsum, eleifend porttitor mi ullamcorper.'),
];

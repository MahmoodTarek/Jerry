class ProductInfo {
  final String title;

  final String image;

  final String description;

  final int price;

  final int? discount;

  ProductInfo({
    required this.title,
    required this.image,
    required this.description,
    required this.price,
    this.discount
  });
}
class Product {
  final String photo;
  final String item;
  final String description;
  final String price;
  final String parcel;
  bool isFavorite;

  Product({
    required this.photo,
    required this.item,
    required this.description,
    required this.price,
    required this.parcel,
    this.isFavorite = false,
  });
}

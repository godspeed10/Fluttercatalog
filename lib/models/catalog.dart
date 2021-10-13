class Item {
  final String id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.color,
      required this.image});
}

final products = [
  Item(
      id: "coder1",
      name: "pradeep",
      description: "a boy",
      price: 99,
      color: "#33505a",
      image: "https://images6.alphacoders.com/116/1167538.jpg")
];

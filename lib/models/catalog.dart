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
      description: "iphone 12",
      price: 999,
      color: "#33505a",
      image:
          "https://www.reliancedigital.in/medias/Apple-12-Smartphones-491901533-i-1-1200Wx1200H?context=bWFzdGVyfGltYWdlc3wxMTMwMTd8aW1hZ2UvanBlZ3xpbWFnZXMvaDM2L2g1OC85NDA3NzMxMTcxMzU4LmpwZ3w5NjBiYTIzZWE1Yjg5NjQzN2YyZTAxZjNhNGI2ODg0YzQ4NmZlMDZiN2EwYmVkYjlhZjA3OGIxNDZiNDEzNTc0")
];

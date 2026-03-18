class Product {
  final String name;
  final String image;
  final int price;
  final String description;

  Product({
    required this.name,
    required this.image,
    required this.price,
    required this.description
  });
}

List<Product> dummyProducts = [
  Product(
    name: "Veggie tomato mix",
    image: "assets/images/veggie.png",
    price: 30000,
    description:
        "Perpaduan sayuran segar dengan saus tomat spesial yang kaya rasa. Cocok untuk kamu yang ingin makan sehat tapi tetap lezat.",
  ),
  Product(
    name: "Nasi goreng",
    image: "assets/images/nasigoreng.png",
    price: 15000,
    description:
        "Nasi goreng khas Indonesia dengan bumbu rempah pilihan, dilengkapi telur dan topping lezat yang menggugah selera.",
  ),
  Product(
    name: "Nasi lemak",
    image: "assets/images/nasilemak.png",
    price: 15000,
    description:
        "Nasi gurih dimasak dengan santan, disajikan dengan sambal pedas, telur, dan pelengkap khas yang nikmat.",
  ),
  Product(
    name: "Ayam Goreng",
    image: "assets/images/ayamgoreng.png",
    price: 20000,
    description:
        "Ayam goreng renyah di luar dan juicy di dalam, dibumbui rempah khas yang membuat rasanya semakin mantap.",
  )
];

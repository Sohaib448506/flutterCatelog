class CatalogModel {
  static final items = [
    Item(
        id: "1",
        name: "Codepur",
        desc: "Hello this is practice",
        price: 999,
        color: "#33505a",
        image:
            "https://media.istockphoto.com/id/517188688/photo/mountain-landscape.jpg?s=612x612&w=0&k=20&c=A63koPKaCyIwQWOTFBRWXj_PwCrR4cEoOw2S9Q7yVl8="),
    Item(
        id: "2",
        name: "Raja.com",
        desc: "Hello this is Raja",
        price: 500,
        color: "#33505a",
        image:
            "https://media.istockphoto.com/id/517188688/photo/mountain-landscape.jpg?s=612x612&w=0&k=20&c=A63koPKaCyIwQWOTFBRWXj_PwCrR4cEoOw2S9Q7yVl8="),
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final String color;
  final num price;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.color,
      required this.price,
      required this.image});
}

class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/garage.jfif',
    name: 'Monkey Garage',
    address: '404 Great East road',
    price: 125,
  ),
  Hotel(
    imageUrl: 'assets/images/fueling.jpg',
    name: 'Wheeler Autos',
    address: '404 Great Street',
    price: 150,
  ),
  Hotel(
    imageUrl: 'assets/images/tire.jpg',
    name: 'ABC Tires',
    address: '404 Great Street',
    price: 170,
  ),
  Hotel(
    imageUrl: 'assets/images/towtruck.jpg',
    name: 'Toll Riders Limited',
    address: '404 Great Street',
    price: 140,
  ),
];
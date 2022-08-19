import 'package:roadoc/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl:'assets/images/fuel.jpg',
    name: 'St. Mwami, Chibombo',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl:'assets/images/para.webp',
    name: 'St. Mwami, Chibombo',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl:'assets/images/fuel.jpeg',
    name: 'St. Mwami, Chibombo',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl:'assets/images/map.webp',
    name: 'St. Mwami, Chibombo',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl:'assets/images/fuel.png',
    city: 'Fuel Delivery',
    country: '43 Locations',
    description: 'Get fuel services near you',
    activities: activities,
  ),
  Destination(
    imageUrl:'assets/images/para.webp',
    city: 'Paramedic',
    country: '22 Locations',
    description: 'Instant paramedics actions',
    activities: activities,
  ),
  Destination(
    imageUrl:'assets/images/tolltrack.png',
    city: 'Tow Truck',
    country: '34 Locations',
    description: 'Tow truck services near me',
    activities: activities,
  ),
  Destination(
    imageUrl:'assets/images/tires.jpg',
    city: 'Flat Tire',
    country: '5 Locations',
    description: 'Fix a flat tire',
    activities: activities,
  ),
  Destination(
    imageUrl:'assets/images/mechanix.jpg',
    city: 'Find Machanics',
    country: '14 Locations',
    description: 'Find a machanics',
    activities: activities,
  ),
  Destination(
    imageUrl:'assets/images/map.png',
    city: 'SOS',
    country: '24 Locations',
    description: 'Find help',
    activities: activities,
  ),
];
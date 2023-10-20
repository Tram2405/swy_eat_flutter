import 'package:swy_eat_flutter/models/location_model.dart';

class UserModel {
  String? name;
  String? avatar;
  String? couverture;
  bool? liked;
  bool? favourite;
  double? rate;
  int? priceRange;
  int? review;
  int? follower;
  int? following;
  String? description;
  LocationModel? location;
  String? openTime;
  String? closeTime;
  String? phoneNumber;
  String? website;

  UserModel();
}

UserModel user1 = UserModel()
  ..name = "Tram 1111111111111111"
  ..avatar = 'assets/images/avt1.jpg'
  ..couverture = 'https://cdn.pixabay.com/photo/2023/07/26/16/43/food-8151625_640.jpg'
  ..liked = true
  ..favourite = true
  ..rate = 4.0
  ..priceRange = 2
  ..review = 100
  ..follower = 100
  ..following = 100
  ..description = 'aaaaaaaaaaaaa'
  ..location = locationUser1
  ..openTime = '6:00'
  ..closeTime = '20:00'
  ..phoneNumber = '0123456'
  ..website = 'facebook.com'
;

UserModel user2 = UserModel()
  ..name = "Khang"
  ..avatar = 'assets/images/avt2.jpg'
  ..couverture = 'https://cdn.pixabay.com/photo/2023/07/26/16/43/food-8151625_640.jpg'
  ..liked = true
  ..favourite = true
  ..rate = 1.0
  ..priceRange = 3
  ..review = 100
  ..follower = 100
  ..following = 100
  ..description = 'aaaaaaaaaaaaa'
  ..location = locationUser1
  ..openTime = '6:00'
  ..closeTime = '20:00'
  ..phoneNumber = '0123456'
  ..website = 'facebook.com'
  ;

  UserModel user3 = UserModel()
  ..name = "An"
  ..avatar = 'assets/images/avt4.jpg'
  ..couverture = 'https://cdn.pixabay.com/photo/2023/07/26/16/43/food-8151625_640.jpg'
  ..liked = true
  ..favourite = true
  ..rate = 2.0
  ..priceRange = 1
  ..review = 100
  ..follower = 100
  ..following = 100
  ..description = 'aaaaaaaaaaaaa'
  ..location = locationUser1
  ..openTime = '6:00'
  ..closeTime = '20:00'
  ..phoneNumber = '0123456'
  ..website = 'facebook.com'
  ;

class LocationModel {
  String? address;
  String? city;
  double? lat;
  double? long;

  LocationModel();
}

LocationModel locationUser1 = LocationModel()
  ..address = ''
  ..city = 'Da Nang'
  ..lat = 2.0
  ..long = 2.0;

  LocationModel locationUser2 = LocationModel()
  ..address = ''
  ..city = 'Hue'
  ..lat = 5.0
  ..long = 2.0;

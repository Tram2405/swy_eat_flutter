import 'package:swy_eat_flutter/models/location_model.dart';
import 'package:swy_eat_flutter/models/user_model.dart';

class PostModel {
  UserModel? user;
  String? cuisineType;
  double? rate;
  LocationModel? location;
  String? description;
  List<String>? image;

  PostModel();
}

List<PostModel> posts = [
  PostModel()
    ..user = user1
    ..cuisineType = 'Da Nang'
    ..rate = 5.0
    ..location = locationUser1
    ..description = 'Excepteur a mollis exercitationem. Primis beatae! Quis quos optio montes justo quasi dapibus. Iusto blandit mattis et vitae optio quas nec tellus.'
    ..image = [
      'https://cdn.pixabay.com/photo/2023/07/07/17/47/sushi-8113165_1280.jpg',
      'https://cdn.pixabay.com/photo/2023/09/05/12/44/mug-8235059_1280.jpg'
    ],

  PostModel()
    ..user = user2
    ..cuisineType = 'Quang Nam'
    ..rate = 4.0
    ..location = locationUser2
    ..description = 'Excepteur a mollis exercitationem. Primis beatae! Quis quos optio montes justo quasi dapibus. Iusto blandit mattis et vitae optio quas nec tellus.'
    ..image = [
      'https://cdn.pixabay.com/photo/2023/07/07/17/47/sushi-8113165_1280.jpg',
      'https://cdn.pixabay.com/photo/2023/09/05/12/44/mug-8235059_1280.jpg'
    ],

  PostModel()
    ..user = user3
    ..cuisineType = 'Quang Ngai'
    ..rate = 4.0
    ..location = locationUser1
    ..description = 'Excepteur a mollis exercitationem. Primis beatae! Quis quos optio montes justo quasi dapibus. Iusto blandit mattis et vitae optio quas nec tellus.'
    ..image = [
      'https://cdn.pixabay.com/photo/2023/07/07/17/47/sushi-8113165_1280.jpg',
    ],

  PostModel()
    ..user = user1
    ..cuisineType = 'Tay Nguyen'
    ..rate = 5.0
    ..location = locationUser1
    ..description = 'Excepteur a mollis exercitationem. Primis beatae! Quis quos optio montes justo quasi dapibus. Iusto blandit mattis et vitae optio quas nec tellus.'
    ..image = [
      'https://cdn.pixabay.com/photo/2023/07/07/17/47/sushi-8113165_1280.jpg',
      'https://cdn.pixabay.com/photo/2023/09/05/12/44/mug-8235059_1280.jpg'
    ],

  PostModel()
    ..user = user2
    ..cuisineType = 'Ha Noi'
    ..rate = 4.0
    ..location = locationUser2
    ..description = 'bbbbbcccc'
    ..image = [
      'https://cdn.pixabay.com/photo/2023/07/07/17/47/sushi-8113165_1280.jpg',
      'https://cdn.pixabay.com/photo/2023/09/05/12/44/mug-8235059_1280.jpg'
    ],

  PostModel()
    ..user = user3
    ..cuisineType = 'Ho Chi Minh'
    ..rate = 4.0
    ..location = locationUser1
    ..description = 'cccccddddd'
    ..image = [
      'https://cdn.pixabay.com/photo/2023/07/07/17/47/sushi-8113165_1280.jpg',
      'https://cdn.pixabay.com/photo/2023/09/05/12/44/mug-8235059_1280.jpg'
    ],
];

Map<String, dynamic> userIfo = {
  'name': 'John Doe',
  'email': 'algo@yopmail.com',
  'consultas': [
    {
      'id': 'sdksd',
      'date': '2021-10-10',
      'image': 'assets/images/image1.jpg',
    },
  ],
};

User actualUser = User(name: userIfo['name'], email: userIfo['email']);

class User {
  String name;
  String email;

  User({required this.name, required this.email});
}

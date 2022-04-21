class ActorModel {
  final String image;
  ActorModel({required this.image});
  static List<ActorModel> actors = [
    ActorModel(image: 'assets/images/actor_1.jpeg'),
    ActorModel(image: 'assets/images/actor_2.jpeg'),
    ActorModel(image: 'assets/images/actor_3.jpeg'),
    ActorModel(image: 'assets/images/actor_4.jpeg'),
    ActorModel(image: 'assets/images/actor_5.jpeg'),
  ];
}

class planet_model {
  String image;
  String position;
  String name;
  String velocity;
  String distance;
  String description;
  int index;

  planet_model({
    required this.image,
    required this.position,
    required this.name,
    required this.velocity,
    required this.distance,
    required this.description,
    required this.index,
  });

  factory planet_model.frommap({required Map Data}) {
    return planet_model(
      image: Data['image'],
      position: Data['position'],
      name: Data['name'],
      velocity: Data['velocity'],
      distance: Data['distance'],
      description: Data['description'],
      index: Data['index'],
    );
  }
}

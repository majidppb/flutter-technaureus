class Customer {
  const Customer({
    required this.id,
    required this.name,
    required this.mobile,
    required this.street,
    required this.city,
    required this.state,
    required this.image,
  });

  final String city;
  final int id;
  final String image;
  final String mobile;
  final String name;
  final String state;
  final String street;
}

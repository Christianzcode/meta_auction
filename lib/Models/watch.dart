class Watch {
  late String name;
  late String brand;
  late int year;
  late String condition;
  late String dialColor;
  late String metal;
  late String status;
  late String lastBid;
  late String country;
  late DateTime date;
  late String image;
  late bool favorite;
  late bool topSelling;
  late bool auctioned;
  Watch(
      {required this.name,
        required this.brand,
        required this.year,
        required this.condition,
        required this.dialColor,
        required this.metal,
        required this.status,
        required this.lastBid,
        required this.country,
        required this.date,
        required this.image,
        required this.favorite,
        required this.topSelling,
        required this.auctioned
        });
}

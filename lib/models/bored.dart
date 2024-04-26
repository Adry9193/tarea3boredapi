class BoredActivity {
  final String activity;
  final String type;
  final int participants;
  final double price;
  final double accessibility;
  final String link;

  BoredActivity({
    required this.activity,
    required this.type,
    required this.participants,
    required this.price,
    required this.accessibility,
    required this.link,
  });

  factory BoredActivity.fromJson(Map<String, dynamic> json) {
    return BoredActivity(
      activity: json['activity'],
      type: json['type'],
      participants: json['participants'],
      price: json['price'],
      accessibility: json['accessibility'],
      link: json['link'],
    );
  }
}


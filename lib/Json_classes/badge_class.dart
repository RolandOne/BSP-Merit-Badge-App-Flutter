class BadgeData {
  const BadgeData({
    this.name,
    this.requirements,
  });

  final String name;
  final List<String> requirements;

  factory BadgeData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      throw FormatException("Null JSON provided to BadgeData");
    }

    return BadgeData(
      name: json['aString'],
      requirements: json['aListOfStrings'] != null
          ? List<String>.from(json['aListOfStrings'])
          : null,
    );
  }



}
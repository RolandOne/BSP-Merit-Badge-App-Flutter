

class MeritBadgeRequirements extends Object {

  final List<LineRequirement> requirements;

  MeritBadgeRequirements({this.requirements});

  factory MeritBadgeRequirements.fromJson(List<dynamic> parsedJson) {
    List<LineRequirement> lineRequirement = new List<LineRequirement>();
    lineRequirement =
        parsedJson.map((i) => LineRequirement.fromJson(i)).toList();

    return new MeritBadgeRequirements(requirements: lineRequirement);
  }
}


class LineRequirement extends Object {
  final List<String> lineRequirement;

  LineRequirement({
    this.lineRequirement,
  });

  factory LineRequirement.fromJson(List<dynamic> json) {
    List<String> lineRequirements = json.cast<String>();

    return new LineRequirement(lineRequirement: lineRequirements);
  }
}

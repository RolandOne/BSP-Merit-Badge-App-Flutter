//import 'package:json_serializable/json_serializable.dart';
//import 'package:json_annotation/json_annotation.dart';
//
//part 'ranks.g.dart';
//
//class ListProgramAndRanks extends Object {
//  final List<ProgramAndRank> programAndRank;
//
//  ListProgramAndRanks({this.programAndRank});
//
//  factory ListProgramAndRanks.fromJson(List<dynamic> parsedJson) {
//    List<ProgramAndRank> programAndRank = new List<ProgramAndRank>();
//    programAndRank = parsedJson.map((i) => ProgramAndRank.fromJson(i)).toList();
//
//    return new ListProgramAndRanks(programAndRank: programAndRank);
//  }
//}
//
//@JsonSerializable()
//class ProgramAndRank extends Object {
//  @JsonKey(name: 'Program')
//  final String Program;
//  @JsonKey(name: 'Ranks')
//  final ListofRanks listRanks;
//
//  ProgramAndRank({this.Program, this.listRanks});
//
//  factory ProgramAndRank.fromJson(Map<String, dynamic> json) =>
//      _$ProgramAndRankFromJson(json);
//}
//
//class ListofRanks extends Object {
//  final List<ProgramAndRank> programAndRank;
//
//  ListofRanks({this.programAndRank});
//
//  factory ListProgramAndRanks.fromJson(List<dynamic> parsedJson) {
//    List<ProgramAndRank> programAndRank = new List<ProgramAndRank>();
//    programAndRank = parsedJson.map((i) => ProgramAndRank.fromJson(i)).toList();
//
//    return new ListProgramAndRanks(programAndRank: programAndRank);
//  }
//}
//
//
//
//@JsonSerializable()
//class Ranks extends Object {
//  @JsonKey(nullable: true)
//  final List<String> listRequiredBadges;
//
//  Ranks({this.listRequiredBadges});
//
//  factory Ranks.fromJson(List<dynamic> json) => _$RanksFromJson(json);
//}

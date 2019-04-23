//// GENERATED CODE - DO NOT MODIFY BY HAND
//
//part of 'ranks.dart';
//
//// **************************************************************************
//// JsonSerializableGenerator
//// **************************************************************************
//
//ProgramAndRank _$ProgramAndRankFromJson(Map<String, dynamic> json) {
//  return ProgramAndRank(
//      Program: json['Program'] as String,
//      listRanks: (json['Ranks'] as List)
//          ?.map((e) => e == null ? null : Ranks.fromJson(e as List))
//          ?.toList());
//}
//
//Map<String, dynamic> _$ProgramAndRankToJson(ProgramAndRank instance) =>
//    <String, dynamic>{'Program': instance.Program, 'Ranks': instance.listRanks};
//
//Ranks _$RanksFromJson(Map<String, dynamic> json) {
//  return Ranks(
//      listRequiredBadges: (json['listRequiredBadges'] as List)
//          ?.map((e) => e as String)
//          ?.toList());
//}
//
//Map<String, dynamic> _$RanksToJson(Ranks instance) =>
//    <String, dynamic>{'listRequiredBadges': instance.listRequiredBadges};

import 'dart:convert';



void main() {
  print(GetRequirement('Agriculture'));
}

List<String> GetRequirement(String badgeName){
  if(badgeName == "Agriculture") return Data().Agriculture;
}

class Data {
  final List<String> Agriculture = [
    "1. Explain the nature of soil, its texture, its need of water, of air, and of plant and animal life; what the soil does for the plant, and how soil may be improved and conserved.",
    "2. Do the following:",
    "a. Prepare a seedbed and test the germination of three (3) chosen varieties of 100 seeds of each variety.",
    "b. Identify and describe ten (10) common weeds in the locality and tell how best to eliminate them.",
    "c. Identify six (6) common insect pests; tell what plants they usually infest and how best to control them.",
    "3. Have a practical knowledge of hoeing, plowing, harrowing, the use of a rake and a roller, irrigating and raining, planting and harvesting and the purposes of each. Describe the implements used in each case.",
    "4. Tell how plants are propagated by seeds, roots, cuttings, and grafts. Explain where plants get their food and how they grow.",
    "5. Name and identify ten (10) common birds in the locality, and state their value to the farmer.",
    "6. Tell what part the carabao plays in present-day farming.",
    "7. Explain how farming may be modernized and what steps are now being taken by the government to attain this end. Tell the advantages of modernized farming.",
  ];
}

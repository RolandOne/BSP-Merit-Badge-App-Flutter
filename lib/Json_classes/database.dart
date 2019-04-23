List<String> getListofRequirements(String badgeName) {
  if (badgeName == "agriculture") return Data().agriculture;
  if (badgeName == "animalstudy") return Data().animalstudy;
  if (badgeName == "archery") return Data().archery;
  if (badgeName == "architecture") return Data().architecture;
  if (badgeName == "art") return Data().art;

  if (badgeName == "astronomy") return Data().astronomy;
  if (badgeName == "athletics") return Data().athletics;
  if (badgeName == "automobiling") return Data().automobiling;
  if (badgeName == "aviation") return Data().aviation;
  if (badgeName == "barbering") return Data().barbering;
  if (badgeName == "basketry") return Data().basketry;
  if (badgeName == "beekeeping") return Data().beekeeping;
}

class Data {
  final List<String> AlphabeticalList = [
    'Agriculture',
    'Animal Study',
    'Archery',
    'Architecture',
    'Art',
    'Astronomy',
    'Athletics',
    'Automobiling',
    'Aviation',
    'Barbering',
    'Basketry',
    'Beekeeping',
  ];

  final List<String> agriculture = [
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

  final List<String> animalstudy = [
    "1. Make five (5) field trips of at least two hours each (preferably on different months of the year) to observe wild animal life. Keep records of such trips, listing all animals seen, with date, place, nature of locality, and observations of animals and their habits. (Photographs, sketches, track casts, etc. will add interest to this record).",
    "2. Using the \"keys\" of the modern system of classifying animal life, classify at least five (5) animals of different phyla which you yourself select.",
    "3. Find out the life processes that are common to all animal life (birth, self-protection, feeding, breathing, etc.). Keep a record of personal observation of the life cycle and habits of at least two (2) animals of different phyla.",
    "4. On a map of your locality (showing such things as forests, plains, streams, marshes, and areas, etc.), indicate animals found in each habitat. Know what is being done in the country to protect wild animal life.",
    "5. Carry out one of the following projects:",
    "a. Keep a young animal (completely weaned from its mother) such as a rabbit or a guinea pig for at least three (3) months. Keep a record of its life cycle and habits.",
    "b. Maintain an aquarium or \"toad pan\" for at least three (3) months. Stock from local ponds, streams, or marshes. Watch development from egg on - of frogs, toads, turtles, fish, or whatever animal you have chosen for special observation. Keep a record of its life cycle and habits.",
    "c. Submit at least ten (10) photographs or sketches (based on your own observation) of microscopic life in the field for at least three (3) months."
  ];

  final List<String> archery = [
    "1. Name and explain the archery safety rules.",
    "2. Do all of the following:",
    "a. Name the parts of an arrow.",
    "b. Name the parts of a bow.",
    "c. Describe the following accessories: arm guard, shooting glove, finger tab, and quiver.",
    "3. Do all of the following:",
    "a. Explain proper care and how to store the bow, bowstrings, and arrows.",
    "b. Make a bowstring.",
    "c. Fletch six arrows.",
    "4. Explain the following terms: cast, weight of bow, fistmele, methods of aiming, spine, target arrow, field arrow, and hunting arrows.",
    "5. Shoot with bow and arrow one of the following:",
    "a. A field round for 14 targets, and make a score of 60 points.",
    "b. A Boy Scout field archery round for 14 targets (56 shots), and make a score of 75 points.",
    "c. A junior American round on a standard 48-inch target, and make a score of 250 points.",
    "d. d. A national indoor round for 10 targets, and make a score of 30 points.",
    "e. A Chicago round on a standard 16-inch target, and make a score of 250 points.",
    "6. Explain the following:",
    "a. The difference between field archery and target archery.",
    "b. Field round, hunter's round, animal round, Boy Scout field archery round, American and junior American rounds, national indoor round, and Chicago round.",
  ];

  final List<String> architecture = [
    "1. Present a freehand drawing of geometric objects grouped together, decorative pattern, or architectural motif.",
    "2. Draw without accurate measurements, the five (5) orders of classical architectures - the drawings being of the character of sketches, but preserving the properties.",
    "3. Write an outline of the important periods of architectural development, giving the name of each style and the architects identified with it.",
    "4. Write a brief historical outline of the development of architecture in the Philippines, and name important architects identified with each period.",
    "5. Submit an original design of a two-story house - with a list of materials necessary for its construction, giving an outline of specifications, the design to consist of working drawings at scale drawn in ink or pencil on tracing paper suitable for printing.",
    "6. Present clippings of at least five (5) examples of the following styles of architecture, giving the name of their architects and country identified with each:",
    "a. Classical",
    "b. Romanesque",
    "c. Gothic",
    "d. Renaissance",
    "e. Contemporary International",
    "7. Submit sketches of typical Malay, Indian (Hindu), Japanese, Chinese, Muslim, or any oriental style of architectural motifs and decorations.",
    "8. Present a miniature model of an ideal and well-planned town-site or campsite.",
  ];

  final List<String> art = [
    "1. Tell a story with a picture or pictures. This story may be told in the form of a cartoon, cartoon strip, mural, or tapestry design rendered in any medium.",
    "2. Promote a product or an idea with a picture or pictures. This may take the form of an advertisement layout for a magazine, a display card, a package, a poster, an industrial design, an architectural structure, or an interior decoration.",
    "3. Record in an art medium something you have done or seen",
    "4. Decorate something with an original design - derived either from nature or an impressionistic or geometric pattern.",
    "5. Design something useful - a book, furniture, house, rooms, vehicle, clothing, costume, etc.",
    "6. Render a subject of your choice in four of these six methods:",
    "a. Pen and ink",
    "b. Watercolor",
    "c. Pencil",
    "d. Pastel",
    "e. Oil",
    "f. Tempera",
  ];
  final List<String> astronomy = [
    "1. Identify the following in the sky:",
    "a. Ten (10) conspicuous constellations, including at least four (4) in the Zodiac.",
    "b. Eight (8) stars of the first magnitude.",
    "2. Chart the position of Venus and Mars among the stars over a period of at least four (4) weeks, and state the exact period of your observations.",
    "3. Sketch the position of the Big Dipper in relation to the North Star and the horizon early one evening, and again six (6) hours later the same night. Record the hour and the date of making each sketch.",
    "4. Indicate in the sky the limits of the group of stars which, as seen from your latitude, never set. By your own observation, determine whether the Big Dipper or Cassiopeia ever sets.",
    "5. Draw a diagram showing the relative positions of the sun, moon, and earth - during the new moon, first quarter, full moon, and last quarter. Draw a diagram showing the positions of the sun, moon, and earth during an eclipse of the sun and another during an eclipse of the moon.",
    "6. Explain the principal cause of tides. Draw a diagram showing the relative positions of the sun, moon, and earth during high and low tides.",
    "7. Explain the principal difference between a reflecting and a refracting telescope. Show these by a simple diagram.",
  ];
  final List<String> athletics = [
    "1. Write a 300-word article on how to train for an athletic event.",
    "2. Give the rules for two track and two field events. Tell what an amateur athlete is.",
    "3. Prepare plans for the holding of an athletic meet, specifying duties of each official.",
    "4. Demonstrate the proper form in running, high jump, overhand throw, and shotput.",
    "5. Do the following:",
    "a. Prepare a daily drill of ten (10) exercises for Scouts - giving proper exercise for the whole body, presenting evidence of having taught the same for two or more boys for a period of three months.",
    "b. Demonstrate reasonable skill in at least two outdoor games requiring physical development.",
    "c. Walk ten (10) kilometers in two hours without appreciable exhaustion.",
    "d. Qualify (according to your weight) in each of the groups on the previous page.",
  ];

  final List<String> automobiling = [
    "1. Carefully examine and check conditions of the following features of an automobile:",
    "a. Windshield wiper",
    "b. Adjustment of rear-view mirror",
    "c. Headlights for all headlight switch positions; reflector surfaces; cleanliness of lenses and that bulbs are free from blackening",
    "d. Elevation an focus of headlight beams",
    "e. Tail and stop lights",
    "f. Windshield and rear window visibility",
    "g. \"Play\" in steering wheel",
    "h. Adjustment of brakes",
    "i. Tires",
    "2. Do the following:",
    "a. List ten (10) important motor vehicle regulations in your province or city.",
    "b. Give the necessary qualifications (including age) before a person can legally drive a vehicle in the Philippines.",
    "3. Explain how drinking intoxicating liquor increases vehicular accidents as, for example, its effects on the driver's vision, judgment, and coordination.",
    "4. Tell how many meters a driver on a dry road with brakes in good condition who sees danger ahead, is required to stop his car running 30 kilometers an hour; 50 kilometers; 70 kilometers.",
    "5. Do the following:",
    "a.",
    "1. Name at least six (6) sound driving practices which make for safety and courtesy on the road.",
    "2. Name at least four (4) important characteristics of a good driver.",
    "3. Demonstrate hand signals, using both single hand position, and three position systems; give the meaning of each.",
    "b. Explain:",
    "1. The purpose of clutch, gear shift, accelerator, choke, and brakes; describe briefly how each works.",
    "2. How to stop a car on a wet or muddy road.",
    "3. What to do when end skids to the right; to the left.",
    "4. What to do when stop lights of a car ahead blinks.",
    "5. What to do when a blow-out occurs at high speed.",
    "6. Interpret readings of different gauges and meters on panel board.",
    "c. Change a tire.",
    "d.",
    "1. Start a motor; put car in gear; shift gears.",
    "2. Come smoothly to full stop form speed of thirty (30) kilometers an hour.",
    "3. Make right and left turns from proper traffic lanes, giving proper signals at proper time.",
    "4. Park in a space of eight (8) meters.",
    "5. Start a car after stopping on an upgrade (away from curb); park on an upgrade and on a downgrade. Show how to get off sand and mud.",
    "6. Turn around in order to go in opposite direction between lines or marker nine (9) meters apart.",
    "7. Back up a car parallel to a curb.",
    "6. Demonstrate his ability to stop a car going at a speed of 30 kilometers per hour so that nose of car fits into a chalk-marked U-shaped box two (2) meters wide. Bumpers would be over front line of the box and tires inside sidelines.",
  ];
  final List<String> aviation = [
    "1. Know what aviation means - its importance, how it affects the world, and how aviation has progressed in the Philippines.",
    "2. Define aircraft. Describe some kinds of aircraft in use today.",
    "3. Outline at least five (5) uses of aircraft.",
    "4. Identify and explain the purpose of the following aircraft instruments:",
    "a. Altimeter",
    "b. Airspeed indicator",
    "c. Compass",
    "d. Turn and bank indicator",
    "e. Tachometer",
    "f. Oil pressure gauge",
    "g. Temperature gauge",
    "5. Show a knowledge of the International Phonetic Alphabet.",
    "6. Do the following:",
    "a. Point out on a model plane the forces which act on an airplane in flight.",
    "b. Show one other principle basic to flight.",
    "c. Build a wing section, and show the principles of lift.",
    "d. Tell six (6) rules of safety to follow around airplanes and airports. Tell safety rules for building and flying model airplanes. Tell safety rules for glue, paint dope, and plastics.",
    "e. Visit an airport or any local airbase near your home. After the visit, tell how the facilities were used.",
    "f. Find out what job opportunities there are in aviation. Tell the qualifications and working conditions of one job you are interested in. Tell what the job offers in reaching your goal in life.",
  ];

  final List<String> barbering = [
    "1. Visit a barbershop. Talk to the barber and request him to give some pointers about barbering.",
    "2. Show the proper way of using a barber's scissors and razor.",
    "3. With the help of a barber - learn how to cut hair properly, demonstrate the proper technique of cutting hair, and demonstrate how to use a whetstone and a stropping belt for sharpening scissors and razor.",
    "4. Cut the hair of three (3) of your friends to their satisfaction.",
  ];
  final List<String> basketry = [
    "1. Name at least ten (10) different native materials used in basketry, and the various places in the Philippines where each of these materials can be found.",
    "2. Name at least four (4) different hand tools used in basketry. Give their uses and explain how they are sharpened.",
    "3. Do the following:",
    "a. Describe the steps in bleaching buri leaves and bamboo.",
    "b. Name the dye-stuff used in coloring buri leaves and bamboo.",
    "4. Submit an album or a collection containing:",
    "a. labeled samples of at least ten (10) basketry materials",
    "b. samples of at least six (6) weave designs",
    "c. three (3) basket finishing trimmings.",
    "5. Show how to prepare at least two (2) of the following Philippine raw materials used for making baskets: buri, nito, ticug, bamboo, rattan, bamban, and coconut midribs.",
    "6. Submit one working drawing of a basket made of any of the following: bamboo, bamboo-rattan, bamboo-bamban, bamboo-rattan-nito, or plywood-bamboo-buri.",
    "7. Make at least one (1) basket using materials mentioned in #6.",
  ];
  final List<String> beekeeping = [
    "1. Look for and make a study of a beehive. Remove the combs. Find the queen. Calculate the amount of the brood, and number of queen cells. Calculate the amount of honey in the hive.",
    "2. Show the difference among the drones, workers, eggs, larvae, and pupae at different stages. Tell the difference between honey, wax, pollen, and propolis. Tell where wax comes from. Explain the part played in the life of the hive by the queen, the drones, and the workers. Tell how bees make honey.",
    "3. Hive a swarm or divide at least one colony. Explain how a hive is made.",
    "4. Prepare the honey for marketing.",
    "5. Write a 200-word essay on how and why the honeybee is used in pollinating farm crops. Name five (5) cops in your area pollinated by honeybees.",
    "5. Show how to prepare at least two (2) of the following Philippine raw materials used for making baskets: buri, nito, ticug, bamboo, rattan, bamban, and coconut midribs.",
    "6. Submit one working drawing of a basket made of any of the following: bamboo, bamboo-rattan, bamboo-bamban, bamboo-rattan-nito, or plywood-bamboo-buri.",
    "7. Make at least one (1) basket using materials mentioned in #6.",
  ];
}

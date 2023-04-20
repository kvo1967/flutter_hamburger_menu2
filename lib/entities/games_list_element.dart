class GamesListElement {
  String season;
  DateTime datePlayed;
  String description;
  String result;
  int competition;

  GamesListElement(
      {required this.season,
      required this.datePlayed,
      required this.description,
      required this.result,
      required this.competition});
}

var gamesMock = <GamesListElement>[
  GamesListElement(
      season: '22-23',
      datePlayed: DateTime(2023, 3, 11),
      description: 'AZ - FC Groningen',
      result: '1 - 0',
      competition: 1),
  GamesListElement(
      season: '22-23',
      datePlayed: DateTime(2023, 3, 16),
      description: 'AZ - Lazio',
      result: '2 - 1',
      competition: 3),
  GamesListElement(
      season: '22-23',
      datePlayed: DateTime(2023, 3, 19),
      description: 'FC Twente - AZ',
      result: '2 - 1',
      competition: 1),
  GamesListElement(
      season: '22-23',
      datePlayed: DateTime(2023, 4, 1),
      description: 'AZ - SC Heerenveen',
      result: '1 - 1',
      competition: 1),
];

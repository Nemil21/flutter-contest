class Character{
  late String id;
  late String name;
  late List<String> films;
  late List<String> shortFilms;
  late List<String> tvShows;
  late List<String> videoGames;

  Character({
    required this.id,
    required this.name,
    required this.films,
    required this.shortFilms,
    required this.tvShows,
    required this.videoGames,
    
  });

factory Character.fromJson(Map<String, dynamic> json) {
      return Character(
        id: json['_id'],
        name: json['name'],
        // films: json['films'],    
        films : json['films'].cast<String>(),
        shortFilms : json['shortFilms'].cast<String>(),
        tvShows : json['tvShows'].cast<String>(),
        videoGames : json['videoGames'].cast<String>(),
        // shortFilms: json['shortFilms'],
        // tvShows: json['tvShows'],
        // videoGames: json['videoGames'],
      );
    }
}
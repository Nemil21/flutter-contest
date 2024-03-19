import 'package:flutter/material.dart';
import 'package:workshopapp/model.dart';

class characterWidget extends StatelessWidget {
  Character char;
   characterWidget(this.char,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text('Id-'+char.id),
              Text('Name -'+char.name)
            ],
          ),
          Row(
            children: [
              Text('films - ${char.films.join(', ')}'),
              Text('Short Films - ${char.shortFilms.join(', ')}'),
              Text('TV Shows - ${char.tvShows.join(', ')}'),
              Text('Video Games - ${char.videoGames.join(', ')}')
            ],
          )
        ],
      ),
    );
  }
}
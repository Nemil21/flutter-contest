import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:workshopapp/model.dart';

class characterWidget extends StatelessWidget {
  Character char;
  characterWidget(this.char, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(18, 64, 118, 1),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 50, 10, 5),
            child: Row(
              children: [
                Text('->Id-' + char.id.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 5.sp,
                        fontFamily: 'interTight')),
                Text('-------',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 5.sp,
                        fontFamily: 'interTight')),
                Text('Name -' + char.name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 5.sp,
                        fontFamily: 'interTight'))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
            child: Row(
              children: [
                Text('Films - ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 3.sp,
                        fontFamily: 'interTight'))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 1, 10, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: char.films.map((film) {
                return ListTile(
                  contentPadding: EdgeInsets.fromLTRB(1, 1, 1, 1),
                  leading: Icon(Icons.arrow_right, color: Colors.white),
                  title: Text(
                    film,
                    style: TextStyle(
                      fontFamily: 'interTight',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 3.sp,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),

          // Row(
          //   children: [Text('films - ${char.films.join(', ')}',
          //         style: TextStyle(
          //             fontWeight: FontWeight.bold,
          //             color: Colors.amber,
          //             fontSize: 5.sp))],
          // ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
            child: Row(
              children: [
                Text('Short Films - ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 3.sp,
                        fontFamily: 'interTight')),
                if (char.shortFilms.isEmpty)
                  Text('No short films for this character',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 3.sp,
                          fontFamily: 'interTight')),
                if (char.shortFilms.isNotEmpty)
                  Text('${char.shortFilms.join(', ')}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 3.sp,
                          fontFamily: 'interTight')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
            child: Row(
              children: [
                Text('TV Shows - ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 3.sp,
                        fontFamily: 'interTight')),
                if (char.tvShows.isEmpty)
                  Text('No TV shows for this character',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 3.sp,
                          fontFamily: 'interTight')),
                if (char.tvShows.isNotEmpty)
                  Text('${char.tvShows.join(', ')}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 3.sp,
                          fontFamily: 'interTight'))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
            child: Row(
              children: [
                Text('Video Games - ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 3.sp,
                        fontFamily: 'interTight')),
                if (char.videoGames.isEmpty)
                  Text('No Video Games for this character',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 3.sp,
                          fontFamily: 'interTight')),
                if (char.videoGames.isNotEmpty)
                  Expanded(
                    child: Text(char.videoGames.join(', '),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 3.sp,
                            fontFamily: 'interTight')),
                  )
                // )if (char.videoGames.isNotEmpty)
                // Text('${char.videoGames.join(', ')}',
                //     style: TextStyle(
                //         fontWeight: FontWeight.bold,
                //         color: Colors.white,
                //         fontSize: 3.sp,
                //         fontFamily: 'interTight'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

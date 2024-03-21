import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:workshopapp/model.dart';

class characterWidget extends StatelessWidget {
  Character char;
  characterWidget(this.char, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 50, 10, 5),
            child: Row(
              children: [
                Text('->Id-' + char.id.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                        fontSize: 7.sp,
                        fontFamily: 'interTight')),
                Text('-------',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 5.sp)),
                Text('Name -' + char.name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 5.sp,
                        fontFamily: 'interTight'))
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: char.films.map((film) {
              return ListTile(
                contentPadding:
                    EdgeInsets.fromLTRB(1,1,1,1),
                leading: Icon(Icons.arrow_right),
                title: Text(
                  film,
                  style: TextStyle(
                    fontFamily: 'interTight',
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(34, 40, 49, 1),
                    fontSize: 3.sp,
                  ),
                ),
              );
            }).toList(),
          ),

          // Row(
          //   children: [Text('films - ${char.films.join(', ')}',
          //         style: TextStyle(
          //             fontWeight: FontWeight.bold,
          //             color: Colors.amber,
          //             fontSize: 5.sp))],
          // ),
          Row(
            children: [
              Text('Short Films - ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(49, 54, 63, 1),
                      fontSize: 3.sp)),
              if (char.shortFilms.isEmpty)
                Text('No short films for this character',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontSize: 3.sp)),
              if (char.shortFilms.isNotEmpty)
                Text('${char.shortFilms.join(', ')}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 5.sp)),
            ],
          ),
          Row(
            children: [
              Text('TV Shows - ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(118, 171, 174, 1),
                      fontSize: 3.sp)),
              if (char.tvShows.isEmpty)
                Text('No short films for this character',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontSize: 3.sp)),
              if (char.tvShows.isNotEmpty)
                Text('${char.tvShows.join(', ')}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(118, 171, 174, 1),
                        fontSize: 3.sp))
            ],
          ),
          Row(
            children: [
              Text('Video Games - ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(23, 107, 135,1),
                      fontSize: 3.sp)),
              if (char.tvShows.isEmpty)
                Text('No short films for this character',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontSize: 3.sp)),
              if (char.tvShows.isNotEmpty)
                Text('${char.tvShows.join(', ')}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(118, 171, 174, 1),
                        fontSize: 3.sp))
            ],
          ),
        ],
      ),
    );
  }
}

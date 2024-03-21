import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:workshopapp/ApiService.dart';
import 'package:workshopapp/model.dart';
import 'package:workshopapp/characterList.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Disney Character Lister'),titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 7.sp ),backgroundColor: Colors.blue,),
//       body: Container(
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.fromLTRB(450,150,150,50),
//                   child: Text('Click this button to list Disney Characters',
//                               style: TextStyle(
//                                 fontSize: 8.sp,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
                  
//                               ),),
//                 )
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: ()async{
//                     List<Character> characters;
//                        characters = await fetchcharacters();
//                      Navigator.push(context,MaterialPageRoute(builder: (context) => CharacterList(characters),));
//                     // Navigator.pushAndRemoveUntil(
//                     //   context, MaterialPageRoute(
//                     //     builder: (context) => MyHomePage(title: ''),),
//                     //      (Route<dynamic>route) => false);
//                   },
//                   child: Text('Click here'))
//               ],
//             )
            
//           ],
//         ),
//       ),
//       // bottomNavigationBar: Container(
//       //   height: 20.h,
//       //   color: Colors.brown,
//       //   child: Row(
//       //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       //     children: [
//       //       Icon(Icons.home,size: 20,color: Colors.white,),
//       //       Icon(Icons.add_a_photo,size: 50.w,color: Colors.white)
//       //     ],
//       //   ),
//       // ),
//     );
//   }
// }

body: Container(
   color: Color.fromRGBO(18, 64, 118, 1),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0), // Adjust vertical padding
          child: Text(
            'Click this button to list Disney Characters',
            style: TextStyle(
              fontSize: 8.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Center(
        child: ElevatedButton(
          onPressed: () async {
            List<Character> characters;
            characters = await fetchcharacters();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CharacterList(characters)),
            );
          },
          child: Text('Click here'),
        ),
      ),
    ],
  ),
));
  }}

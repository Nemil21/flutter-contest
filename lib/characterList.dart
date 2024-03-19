import 'package:flutter/material.dart';
import 'package:workshopapp/model.dart';
import 'package:workshopapp/characterWidget.dart';
class CharacterList extends StatelessWidget {
  List<Character> characterList;
   CharacterList(this.characterList,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Characters')),
      body: Container(
        child:SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(children: [
          
          for (int i=0;i<characterList.length;i++)
          characterWidget(characterList[i]),
          
  
        ]),
        ),
        
      ),
    );
  }
}
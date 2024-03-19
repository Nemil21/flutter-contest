import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:workshopapp/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context,orientation,deviceType){
      return MaterialApp(
      title: 'Flutter Contest',
      theme: ThemeData(
         colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: Home(),
    );
    });
    
  }
}
     
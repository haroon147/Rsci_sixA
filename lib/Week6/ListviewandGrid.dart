import 'package:flutter/material.dart';
class ListViewAndGrid extends StatelessWidget {
   ListViewAndGrid({super.key});

  List students =[ "adan","adul rehman","aliza","awias","Tehreem"];

  List universities =  ["Riphah","Superior","uol"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      children: [
        Text(students[0]),
        Text(students[1]),
        Text(students[2]),

        Text(students[3]),
        Text(students[4]),


      ],)
    );
  }
}
//
//
// ListView.builder(
// itemCount: universities.length,
// itemBuilder: (context, index) {
// return Card(
// elevation: 2,
// color: Colors.brown,
// child: ListTile(
// leading: CircleAvatar(),
// title: Text(students[index].toString()),
// subtitle: Text(universities[index].toString()),
//
// ),
// );
// },
// )
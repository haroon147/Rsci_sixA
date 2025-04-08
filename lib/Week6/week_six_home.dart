import 'package:flutter/material.dart';
import 'package:sixa_class_rsci/Week6/screen_one.dart';

class WeekSixHome extends StatelessWidget {
   WeekSixHome({super.key});

  TextEditingController _myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Week-6"),
      ),
      body: Center(
        child: Container(
          color: Colors.amber,
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          child: Container(
              child: Center(
            child: Column(
              children: [
                TextField(
                  controller: _myController,
                ),
                ElevatedButton(
                    onPressed: () {
                    //   Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ScreenOne(myValue: _myController.text,));
                    //

                // Navigator.pushNamed(context, 'screen_one',arguments: {_myController.text});
              },
                    child: Text("IAm BTN")),
              ],
            ),
          )),
        ),
      ),
    );
  }
}

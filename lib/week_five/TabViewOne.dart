import 'package:flutter/material.dart';

class TabViewOne extends StatefulWidget {
  const TabViewOne({super.key});

  @override
  State<TabViewOne> createState() => _TabViewOneState();
}
String myValue = "";
TextEditingController _emailController =  TextEditingController();
final _formKey = GlobalKey<FormState>();


class _TabViewOneState extends State<TabViewOne> {
  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                myValue.toString(),
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                validator: (value){
                  if(value!.isEmpty){
                    return "Enter Something....";
                  }
                  else if(value.length<6){
                    return "At least 6 digits";
                  }
                     return null;
                },
                controller: _emailController,
                onChanged: (value){
                  myValue = value ;
                  setState(() {

                  });
                },

              ),
              ElevatedButton(onPressed:(){
                _formKey.currentState!.validate();
                setState(() {

                  myValue = _emailController.text ;

                });
              }, child: Text("I am Button"),),
            ],
          ),
        ),
      ),
    );
  }
}

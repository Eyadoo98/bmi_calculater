import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;

  ResultsScreen({
     this.result = 0,
     this.isMale = false,
     this.age = 0,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resluts"),
        centerTitle: true,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_outlined))
      ),
      body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Text("Gender : ${isMale? 'Male':'Fmail'} " , style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
              Text("Result : $result" , style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
              Text("Age : $age" , style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
            ],
          ),
        ),
    );
  }
}

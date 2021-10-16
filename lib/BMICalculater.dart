import 'dart:math';

import 'package:bmi_calculator/bmi_result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMICalculater extends StatefulWidget {
  @override
  _BMICalculaterState createState() => _BMICalculaterState();
}

class _BMICalculaterState extends State<BMICalculater> {

  var age = 23;
  bool changeState = true;
  double height = 120.0;
  int weight = 35;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          changeState = true;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage("images/download.jpg"),height: 90.0,width: 90.0,),
                            // Icon(Icons.account_circle, size: 100,),
                            SizedBox(height: 7.0,),
                            Text("MALE",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),)
                          ],
                        ),
                        color: changeState?Colors.cyan:Colors.orangeAccent,
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          changeState = false;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Icon(Icons.account_circle, size: 100,),
                            Image(image: AssetImage("images/ele.jpg"),height: 90.0,width: 90.0,fit: BoxFit.cover,),
                            SizedBox(height: 7.0,),
                            Text("FMALE",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),)
                          ],
                        ),
                        color: !changeState?Colors.cyan:Colors.orangeAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                color: Colors.cyan,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    SizedBox(height: 20.0,),
                    Text("Height",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                    SizedBox(height: 15.0,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [
                        Text("${height.round()}",style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.w900),),
                        Text("cm",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w900),),
                      ],
                    ),
                    Slider(
                        value: height,
                        max: 220.0,
                        min: 80.0,
                        onChanged: (value){
                          setState(() {
                            height = value;
                          });
                            print(value.round());
                        })
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children:
              [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children:
                    [
                      Expanded(
                        child: Container(
                          color: Colors.cyan,
                          child: Column(
                            children:
                            [ SizedBox(height: 10.0,),
                              Text("Age",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
                              SizedBox(height: 10.0,),
                              Text("$age",style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.w900),),
                              SizedBox(height: 10.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:
                                [
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      age++;
                                      if(age==101){

                                        age=100;
                                      }
                                    });
                                  },heroTag: "AgeIncrease",
                                    child:
                                  Text( "+",
                                    style: TextStyle(fontSize: 30.0),),
                                    mini: true,
                                    backgroundColor: Colors.orangeAccent,),
                                  SizedBox(width: 20.0,),
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      age--;
                                      if(age==14){
                                        age=15;
                                      }
                                    });

                                  },heroTag: "Age Decrease",
                                    child: Text("-",
                                    style: TextStyle(fontSize: 30.0),),
                                    mini: true,
                                    backgroundColor: Colors.orangeAccent,),
                                ],
                              ),
                              SizedBox(height: 10.0,),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      Expanded(
                        child: Container(
                          color: Colors.cyan,
                          child: Column(
                            children: [
                              Column(
                                children:
                                [
                                  SizedBox(height: 10.0,),
                                  Text("Weight",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
                                  SizedBox(height: 10.0,),
                                  Text("$weight",style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.w900)),
                                  SizedBox(height: 10.0,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:
                                    [
                                      FloatingActionButton(onPressed: (){
                                        setState(() {
                                          weight++;
                                          if(weight == 121){
                                            weight=120;
                                          }
                                        });
                                      },heroTag: "WeightIncrease",
                                        child: Text
                                        (
                                        "+",style: TextStyle(fontSize: 30.0),),
                                        mini: true,
                                        backgroundColor: Colors.orangeAccent,
                                      ),
                                      SizedBox(width: 20.0,),
                                      FloatingActionButton(onPressed: (){
                                        setState(() {
                                          weight--;
                                          if(weight == 34){
                                            weight=35;
                                          }
                                        });
                                      },heroTag : "WightDecrease",
                                        child: Text(
                                        "-",style: TextStyle(fontSize: 30.0),),
                                        mini: true,
                                        backgroundColor: Colors.orangeAccent,),
                                    ],
                                  ),
                                  SizedBox(height: 10.0,),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ),
         Container(
           height: 55.0,
           width: double.infinity,
           color: Colors.cyan,
             child: MaterialButton(
               onPressed: ()
               {
                 double result = weight / pow(height/100,2);
                 print(result.round());
                 Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsScreen(result: result.round(),isMale:changeState,age: age,)));
               },
               child: Text
                 ("Calculate",style: TextStyle(fontSize: 20.0,color: Colors.white),),))
        ],
      ),
    );
  }
}

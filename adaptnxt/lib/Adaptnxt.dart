import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';


class Adaptnxt extends StatefulWidget {
  const Adaptnxt({Key? key}) : super(key: key);

  @override
  State<Adaptnxt> createState() => _AdaptnxtState();
}

class _AdaptnxtState extends State<Adaptnxt> {

  double _value = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(children: [
      Container(
      padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
      child: Column(
        children: [
          SizedBox(height: 50,),
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                SizedBox(width: 105,),
                Text("Zone 3",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(height: 20,),
              Text("Soil Water Status"),
      ],
          ),
              ],
            ),
      ),
        SizedBox(height: 40,),
        Column(children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Column(

            children: [
              Row(children: [Text("1 ft",style: TextStyle(fontWeight: FontWeight.bold),),
                Container(
                margin: EdgeInsets.only(right: 50),
                height: 60,
                width: 95,
                child: Card(
                  color: Colors.green,
                  child: Center(child: Text('2.48"',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
              ),],),


              Row(children: [Text("2 ft",style: TextStyle(fontWeight: FontWeight.bold),),
                Container(
                  margin: EdgeInsets.only(right: 50),
                  height: 60,
                  width: 95,
                  child: Card(
                    color: Colors.green,
                    child: Center(child: Text('3.19"',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                ),],),

              Row(children: [Text("3 ft",style: TextStyle(fontWeight: FontWeight.bold),),
                Container(
                  margin: EdgeInsets.only(right: 50),
                  height: 60,
                  width: 95,
                  child: Card(
                    color: Colors.green,
                    child: Center(child: Text('3.11"',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                ),],),
            ],
          ),
            Column(
              children: [ Card(
                elevation: 10,
                shadowColor: Colors.grey,
                child: Container(

                  height: 120,
                  width: 170,
                  decoration: BoxDecoration(
                      border: Border.all(width: 3,color: Colors.orange)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Water in Profile"),
                      Text('8.78"',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      Text("72% Full",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                    ],),
                ),
              ),

                Card(
                  elevation: 10,
                  shadowColor: Colors.grey,
                  child: Container(
                    height: 120,
                    width: 170,
                    decoration: BoxDecoration(
                        border: Border.all(width: 3,color: Colors.orange),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("To Refill Profile"),
                        Text('3.46"',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        ElevatedButton(style: ElevatedButton.styleFrom(
                            primary: Colors.yellow.shade700,

                        ),
                            onPressed: (){}, child: Text("Details",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black),))

                      ],),
                  ),
                ),
              ],
            ),
          ],
          ),
          SizedBox(height: 15,),



          Column(children: [
            Text("Forecast - Next 0 Days"),

            SfSlider(
              inactiveColor: Colors.yellow.shade500,
              activeColor: Colors.deepOrange,
              min: 0.0,
              max: 7.0,
              interval: 1,
              showLabels: true,
              showTicks: true,
              value: _value,
              onChanged: (dynamic newvalue){
                setState(() {
                  _value = newvalue;
                });
            }
            )
          ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [ Column(children: [

                          Row(
                          children: [
                          Column(
                            children: [
                         Row(children: [
                         Container(
                           margin: EdgeInsets.only(right: 60),
                           child: Card(
                              elevation: 10,
                            shadowColor: Colors.grey,
                             child: Container(
                               height: 100,
                             width: 100,
                           decoration: BoxDecoration(
                             border: Border.all(width: 3,color: Colors.orange)
                                 ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Text("Water Out"),
              Text('0.19"',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

                                  ],),
                               ),
                                  ),
                         ),
                                ],
                              ),
                              Row(
                                children: [
                                Container(
                                  margin: EdgeInsets.only(right: 60),
                                  child: Card(
                                    elevation: 10,
                                    shadowColor: Colors.grey,
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 3,color: Colors.orange)
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text("Water In"),
                                          Text('0.0"',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                          ],),
                                    ),
                                  ),
                                ),
                              ],
                              ),
                            ],
                          ),
                          ],
                          ),
                    ],
                    ),
                      Column(
                        children: [ Card(
                          elevation: 10,
                          shadowColor: Colors.grey,
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                                border: Border.all(width: 3,color: Colors.orange)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Water Need"),
                                Text('3.65"',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                                ],),
                          ),
                        ),

                        ],
                      ),
    ],
                  ),
        ],

        ),

      ],
      ),
    );
  }
}

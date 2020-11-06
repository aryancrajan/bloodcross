import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red ,
        title: Text("HOME"),
      ),
      body:Container(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 28.0,
              vertical: 100.0,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('B',
                      style: TextStyle(fontFamily: 'Montserrat',
                        fontSize: 38.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),Text('LOODCROS',
                      style: TextStyle(fontFamily: 'Montserrat',
                        fontSize: 38.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text('S',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 38.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 80,
                ),
                //Container(
                //  width: double.infinity,
                 // decoration: BoxDecoration(
                    //image: DecorationImage(
                   //     image: AssetImage("assets/images2.jpg"),
                  //      fit: BoxFit.cover),
                 // ),
               // ),
                Container(
                  height: 50.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(25.0),
                    shadowColor: Colors.redAccent,
                    color: Colors.red,
                    elevation: 10.0,
                    child: InkWell(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>pat_Login()),);
                      },
                      child: Center(
                        child: Text(
                          'SEEKER',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            fontSize:20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  height: 50.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(25.0),
                    shadowColor: Colors.redAccent,
                    color: Colors.red,
                    elevation: 10.0,
                    child: InkWell(
                      onTap: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>doc_Login()),);
                      },
                      child: Center(
                        child: Text(
                          'DONOR',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            fontSize:20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),

                SizedBox(
                  height: 20.0,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

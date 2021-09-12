import 'package:flutter/material.dart';
import 'package:smci/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class Diuchurch extends StatefulWidget {
  const Diuchurch({Key? key}) : super(key: key);

  @override
  _DiuchurchState createState() => _DiuchurchState();
}

class _DiuchurchState extends State<Diuchurch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Text("Saint Paul's Church",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23.0,
                  // fontFamily: 'sans-serif-light',
                  color: Colors.black)
              // textScaleFactor: 1.1,
              ),
        ),
      ),
      drawer: Drawer(child: draw()),
      body: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Center(
                  child: InteractiveViewer(
                    child: Container(
                      width: 350,
                      height: 500,
                      // color: Colors.amber,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("img/church.jpeg"),
                          )),

                      // child: Image.asset("img/mumbai_map.jpg"),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  // color:Colors.blue[50],
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.place,
                          color: Colors.black,
                          size: 40,
                        ),
                        title: Text(
                          "Saint Paul's Church",
                          textScaleFactor: 1.5,
                        ),

                        // trailing: Icon(Icons.done),
                        subtitle: Text('''Location : Diu
Opening Time : 7 AM 
Closing Time : 7 PM 
Ticket Fare : NA'''),
                        // selected: true,
                        onTap: () {
                          setState(() {
                            print("1");
                            // Navigator.pushNamed(
                            //     context, '/DevelopmentPage_Future');
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.file_copy,
                          color: Colors.black,
                          size: 40,
                        ),
                        title: Text(
                          'About',
                          textScaleFactor: 1.5,
                        ),

                        // trailing: Icon(Icons.done),
                        subtitle: Text('''Tap here to know more'''),
                        // selected: true,
                        onTap: () {
                          setState(() async {
                            print("1");
                            await launch(
                                "https://en.m.wikipedia.org/wiki/St._Paul's_Church,_Diu");
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.car_rental,
                          color: Colors.black,
                          size: 40,
                        ),
                        title: Text(
                          'Book Cab',
                          textScaleFactor: 1.5,
                        ),

                        // trailing: Icon(Icons.done),
                        subtitle: Text('''Ride to this place'''),
                        // selected: true,
                        onTap: () {
                          setState(() async {
                            print("1");
                            await launch("https://www.olacabs.com/");
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}

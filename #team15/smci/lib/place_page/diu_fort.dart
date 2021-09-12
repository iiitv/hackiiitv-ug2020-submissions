import 'package:flutter/material.dart';
import 'package:smci/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class Diufort extends StatefulWidget {
  const Diufort({Key? key}) : super(key: key);

  @override
  _DiufortState createState() => _DiufortState();
}

class _DiufortState extends State<Diufort> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Text("Diu Fort",
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
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("img/fort.jpeg"),
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
                          // color: Colors.black,
                          size: 40,
                        ),
                        title: Text(
                          'Diu Fort',
                          textScaleFactor: 1.5,
                        ),

                        // trailing: Icon(Icons.done),
                        subtitle: Text('''Location : Near PWD office, Diu
Opening Time : 11 AM 
Closing Time : 5 PM 
Ticket Fare : Rs. 50 per person'''),
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
                          // color: Colors.black,
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
                                "https://en.m.wikipedia.org/wiki/Diu_Fortress");
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.car_rental,
                          // color: Colors.black,
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

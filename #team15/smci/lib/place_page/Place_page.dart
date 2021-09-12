import 'package:flutter/material.dart';
import 'package:smci/drawer.dart';

class Place_page extends StatefulWidget {
  const Place_page({Key? key}) : super(key: key);

  @override
  _Place_pageState createState() => _Place_pageState();
}

class _Place_pageState extends State<Place_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Text("Place Nearby",
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
                            image: AssetImage("img/diu.jpeg"),
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
                          'Diu Fort',
                          textScaleFactor: 1.5,
                        ),

                        // trailing: Icon(Icons.done),
                        subtitle: Text('Near PWD office, Diu'),
                        // selected: true,
                        onTap: () {
                          setState(() {
                            print("1");
                            Navigator.pushNamed(context, '/Placepage_diuFort');
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.place,
                          color: Colors.black,
                          size: 40,
                        ),
                        title: Text(
                          'Diu Museum',
                          textScaleFactor: 1.5,
                        ),
                        subtitle: Text('Near Airport, Diu'),
                        onTap: () {
                          setState(() {
                            print("2");
                            Navigator.pushNamed(context, '/Placepage_diumus');
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.place,
                          color: Colors.black,
                          size: 40,
                        ),
                        title: Text(
                          '''Saint Paul's church''',
                          textScaleFactor: 1.5,
                        ),
                        subtitle: Text('Diu'),
                        onTap: () {
                          setState(() {
                            print("3");
                            Navigator.pushNamed(
                                context, '/Placepage_diuchurch');
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.place,
                          color: Colors.black,
                          size: 40,
                        ),
                        title: Text(
                          '''Nagoa Beach''',
                          textScaleFactor: 1.5,
                        ),
                        subtitle: Text('Near IIITV-ICD Campus, Diu'),
                        onTap: () {
                          setState(() {
                            print("3");
                            Navigator.pushNamed(context, '/Placepage_diubeach');
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

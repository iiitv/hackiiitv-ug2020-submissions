import 'package:flutter/material.dart';
import 'package:smci/drawer.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Text("Home",
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
                            image: AssetImage("img/home.jpeg"),
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
                          Icons.construction,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Development Around You',
                          textScaleFactor: 1.5,
                        ),

                        // trailing: Icon(Icons.done),
                        // subtitle: Text('This is subtitle'),
                        // selected: true,
                        onTap: () {
                          setState(() {
                            print("1");
                            Navigator.pushNamed(context, '/DevelopmentPage');
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.place,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Place to visit',
                          textScaleFactor: 1.5,
                        ),
                        onTap: () {
                          setState(() {
                            print("2");
                            // Navigator.pushNamed(
                            //     context, '/DevelopmentPage_ongoing');
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Personal',
                          textScaleFactor: 1.5,
                        ),
                        onTap: () {
                          setState(() {
                            print("3");
                            Navigator.pushNamed(context, '/PersonalPage');
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

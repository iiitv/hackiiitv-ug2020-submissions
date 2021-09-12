import 'package:flutter/material.dart';
import 'package:smci/drawer.dart';

class Dev_main extends StatefulWidget {
  const Dev_main({Key? key}) : super(key: key);

  @override
  _Dev_mainState createState() => _Dev_mainState();
}

class _Dev_mainState extends State<Dev_main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Text("Development Around You",
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
                            image: AssetImage("img/const.jpeg"),
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
                          Icons.circle,
                          color: Colors.yellow[700],
                        ),
                        title: Text(
                          'Future Projects',
                          textScaleFactor: 1.5,
                        ),

                        // trailing: Icon(Icons.done),
                        // subtitle: Text('This is subtitle'),
                        // selected: true,
                        onTap: () {
                          setState(() {
                            print("1");
                            Navigator.pushNamed(
                                context, '/DevelopmentPage_Future');
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.circle,
                          color: Colors.green,
                        ),
                        title: Text(
                          'On-Going Projects',
                          textScaleFactor: 1.5,
                        ),
                        onTap: () {
                          setState(() {
                            print("2");
                            Navigator.pushNamed(
                                context, '/DevelopmentPage_ongoing');
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.circle,
                          color: Colors.red,
                        ),
                        title: Text(
                          'Awaited Projects',
                          textScaleFactor: 1.5,
                        ),
                        onTap: () {
                          setState(() {
                            print("3");
                            Navigator.pushNamed(
                                context, '/DevelopmentPage_Await');
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.feedback,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Public Feedback',
                          textScaleFactor: 1.5,
                        ),
                        onTap: () {
                          setState(() {
                            print("4");
                            Navigator.pushNamed(
                                context, '/DevelopmentPage_Feedback');
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

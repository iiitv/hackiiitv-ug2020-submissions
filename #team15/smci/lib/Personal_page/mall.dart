import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Future_mall extends StatefulWidget {
  const Future_mall({Key? key}) : super(key: key);

  @override
  _Future_mallState createState() => _Future_mallState();
}

class _Future_mallState extends State<Future_mall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Text("Shopping Malls",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23.0,
                  // fontFamily: 'sans-serif-light',
                  color: Colors.black)
              // textScaleFactor: 1.1,
              ),
        ),
      ),
      drawer: Drawer(),
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
                            image: AssetImage("img/mumbai_map.jpg"),
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
                          Icons.shopping_bag,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Make shopping list',
                          textScaleFactor: 1.5,
                        ),

                        // trailing: Icon(Icons.done),
                        // subtitle: Text('This is subtitle'),
                        // selected: true,
                        onTap: () {
                          setState(() {
                            print("1");
                            Navigator.pushNamed(
                                context, '/PersonalPage_Mall_todo');
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.shopping_cart,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Buy Online',
                          textScaleFactor: 1.5,
                        ),
                        onTap: () {
                          setState(() async {
                            print("2");
                            // Navigator.pushNamed(
                            //     context, '/DevelopmentPage_ongoing');
                            await launch("https://www.flipkart.com/");
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

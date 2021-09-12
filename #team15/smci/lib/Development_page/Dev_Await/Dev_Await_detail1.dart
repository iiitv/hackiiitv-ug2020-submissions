import 'package:flutter/material.dart';

class Dev_AwaitDetail1 extends StatefulWidget {
  const Dev_AwaitDetail1({Key? key}) : super(key: key);

  @override
  _Dev_AwaitDetail1State createState() => _Dev_AwaitDetail1State();
}

class _Dev_AwaitDetail1State extends State<Dev_AwaitDetail1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Text("Awaited Projects",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23.0,
                  // fontFamily: 'sans-serif-light',
                  color: Colors.black)
              // textScaleFactor: 1.1,
              ),
        ),
      ),
      // drawer: Drawer(),
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
                          Icons.location_city,
                          size: 40,
                          // color: Colors.yellow[700],
                        ),
                        title: Text(
                          'Prashasan Bhawan Reconstruction',
                          textScaleFactor: 1.2,
                        ),
                        subtitle: Text(
                          '''                          
Location 1

Reason : 
                        ''',
                          textScaleFactor: 1.2,
                        ),
                        onTap: () {
                          setState(() {});
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

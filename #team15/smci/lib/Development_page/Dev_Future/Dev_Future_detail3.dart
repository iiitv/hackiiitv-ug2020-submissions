import 'package:flutter/material.dart';

class Dev_FutureDetail3 extends StatefulWidget {
  const Dev_FutureDetail3({Key? key}) : super(key: key);

  @override
  _Dev_FutureDetail3State createState() => _Dev_FutureDetail3State();
}

class _Dev_FutureDetail3State extends State<Dev_FutureDetail3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Text("On-Going Projects",
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
                          Icons.railway_alert_rounded,
                          // color: Colors.red,
                          size: 40,
                        ),
                        title: Text(
                          'Railway_related query',
                          textScaleFactor: 1.2,
                        ),
                        subtitle: Text('''                          
Location 3

Tender : Ramprakash Pvt. Ltd.
Budget : 35 Crores
Starting date : 12/02/2020
Expected Ending date : 01/01/2021
                        '''),
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

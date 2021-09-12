import 'package:flutter/material.dart';

class Personal_Prescription extends StatefulWidget {
  const Personal_Prescription({Key? key}) : super(key: key);

  @override
  _Personal_PrescriptionState createState() => _Personal_PrescriptionState();
}

class _Personal_PrescriptionState extends State<Personal_Prescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Text("Prescription",
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
                            image: AssetImage("img/pres.jpeg"),
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
                          Icons.person,
                          size: 40,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Rx',
                          textScaleFactor: 1.5,
                        ),

                        // trailing: Icon(Icons.done),
                        subtitle: Text('''Dr. Rakesh Kumar
Location : Jay Prakash Nagar, Khagaria'''),
                        // selected: true,
                        onTap: () {
                          setState(() {
                            print("1");
                            // Navigator.pushNamed(
                            //     context, '/DevelopmentPage_Future');
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

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Personal_doctor extends StatefulWidget {
  const Personal_doctor({Key? key}) : super(key: key);

  @override
  _Personal_doctorState createState() => _Personal_doctorState();
}

class _Personal_doctorState extends State<Personal_doctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Text("Health",
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
                          Icons.person,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Visit',
                          textScaleFactor: 1.5,
                        ),

                        // trailing: Icon(Icons.done),
                        subtitle: Text('''Recent Visit : Dr. Rakesh Kumar
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
                      ListTile(
                        leading: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Appointment',
                          textScaleFactor: 1.5,
                        ),
                        subtitle: Text('''Latest Appointmnet : Dr. Shubham Kumar
Location : Jay Prakash Nagar, Khagaria'''),
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
                          Icons.sticky_note_2,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Prescription',
                          textScaleFactor: 1.5,
                        ),
                        onTap: () {
                          setState(() {
                            print("3");
                            Navigator.pushNamed(
                                context, '/PersonalPage_DoctorPres');
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.medication_rounded,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Order Medicine',
                          textScaleFactor: 1.5,
                        ),
                        onTap: () {
                          setState(() {
                            print("4");
                            Navigator.pushNamed(
                                context, '/PersonalPage_DoctorMed');
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.call,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Emergency',
                          textScaleFactor: 1.5,
                        ),
                        onTap: () {
                          setState(() async {
                            print("4");
                            // Navigator.pushNamed(
                            //     context, '/DevelopmentPage_Feedback');
                            await launch("tel:104");
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

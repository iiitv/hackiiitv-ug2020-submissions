import 'package:flutter/material.dart';

class Personal_bank extends StatefulWidget {
  const Personal_bank({Key? key}) : super(key: key);

  @override
  _Personal_bankState createState() => _Personal_bankState();
}

class _Personal_bankState extends State<Personal_bank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Text("Bank",
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
                          Icons.house_siding,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Bank Of India',
                          textScaleFactor: 1.5,
                        ),

                        // trailing: Icon(Icons.done),
                        subtitle: Text('''Location : B.M. Chowk, kanpur
Account No. : 1098746578362578
Balance : Rs. 23,000
Last Transaction : Rs. 300'''),
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
                          Icons.house_siding,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Bank of Baroda',
                          textScaleFactor: 1.5,
                        ),

                        // trailing: Icon(Icons.done),
                        subtitle: Text('''Location : K.K. Road, kanpur
Account No. : 1364798746354876
Balance : Rs. 2,30,000
Last Transaction : Rs. 30,000'''),
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
                          Icons.house_siding,
                          color: Colors.black,
                        ),
                        title: Text(
                          'AXIS Bank',
                          textScaleFactor: 1.5,
                        ),

                        // trailing: Icon(Icons.done),
                        subtitle: Text('''Location : B.M.C Mall Road, kanpur
Account No. : 9876549998362988
Balance : Rs. 13,000
Last Transaction : Rs. 320'''),
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
                          Icons.house_siding,
                          color: Colors.black,
                        ),
                        title: Text(
                          'HDFC Bank',
                          textScaleFactor: 1.5,
                        ),

                        // trailing: Icon(Icons.done),
                        subtitle: Text('''Location : Jaya Chowk, Jholpur
Account No. : 1098699678369999
Balance : Rs. 6869
Last Transaction : Rs. 69'''),
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

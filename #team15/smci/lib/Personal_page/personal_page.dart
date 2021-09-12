import 'package:flutter/material.dart';

class Personal_page extends StatefulWidget {
  const Personal_page({Key? key}) : super(key: key);

  @override
  _Personal_pageState createState() => _Personal_pageState();
}

class _Personal_pageState extends State<Personal_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Text("Personal",
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
                          Icons.health_and_safety,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Health',
                          textScaleFactor: 1.5,
                        ),

                        // trailing: Icon(Icons.done),
                        // subtitle: Text('This is subtitle'),
                        // selected: true,
                        onTap: () {
                          setState(() {
                            print("1");
                            Navigator.pushNamed(
                                context, '/PersonalPage_Doctor');
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.account_balance_wallet,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Wealth',
                          textScaleFactor: 1.5,
                        ),
                        onTap: () {
                          setState(() {
                            print("2");
                            Navigator.pushNamed(context, '/PersonalPage_Bank');
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.shopping_cart,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Shopping',
                          textScaleFactor: 1.5,
                        ),
                        onTap: () {
                          setState(() {
                            print("3");
                            Navigator.pushNamed(context, '/PersonalPage_Mall');
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

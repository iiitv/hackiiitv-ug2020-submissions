import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Dev_feedback extends StatelessWidget {
  const Dev_feedback({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Text("Feedback",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23.0,
                      // fontFamily: 'sans-serif-light',
                      color: Colors.black)
                  // textScaleFactor: 1.1,
                  ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 70.0, right: 70.0, top: 100, bottom: 30),
                  // padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    maxLines: 8,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Write your message ...',
                        hintText:
                            'Feel free to write any type of Query, Complaint, etc.'),
                  ),
                ),
                SignInButtonBuilder(
                  text: 'Submit',
                  fontSize: 16,
                  width: 120,
                  icon: Icons.note_alt,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  backgroundColor: Colors.blueGrey[700]!,
                ),
              ],
            ),
          )),
    );
  }
}

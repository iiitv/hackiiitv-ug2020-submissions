import 'package:flutter/material.dart';

draw() {
  return ListView(
    padding: EdgeInsets.zero,
    children: [
      Container(
        height: 300,
        child: DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.orange,
            ),
            child: Container(
              height: 2.0,
              width: 2.0,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0x33A6A6A6)),
                  color: const Color(0xff7c94b6),
                  // borderRadius: BorderRadius.circular(12),
                  // border: Border.all(color: const Color(0xFF28324E)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("img/fotu.jpg"),
                  )),
            )),
      ),
      ListTile(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.construction),
            onPressed: () {},
          );
        }),
        title: const Text(
          "Development",
          textScaleFactor: 1.5,
        ),
        subtitle: Text('''Future, On-going,
Awaited Projects'''),
        onTap: () {
          // Navigator.pop(context);
          // Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.place),
            onPressed: () {},
          );
        }),
        title: const Text(
          "Places Nearby",
          textScaleFactor: 1.5,
        ),
        subtitle: Text("Place to visit"),
        onTap: () {
          // Navigator.pushNamed(context, '/Filter');
        },
      ),
      ListTile(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {},
          );
        }),
        title: const Text(
          "Personal",
          textScaleFactor: 1.5,
        ),
        subtitle: Text('''Health, Wealth,
Shopping'''),
        onTap: () {
          // Navigator.pushNamed(context, '/Filter');
        },
      ),
      Divider(),
      ListTile(
        title: const Text('''Version : 1.0.1
Contact :  @Suraj
                  @Dev
                  @Yashesh
                  @Omkar'''),
        onTap: () {},
      ),
    ],
  );
}

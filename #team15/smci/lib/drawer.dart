import 'package:flutter/material.dart';

draw() {
  return ListView(
    padding: EdgeInsets.zero,
    children: [
      Container(
        height: 300,
        child: DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.orange[400],
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
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmFp5SDGvQdK3UOl9fzYQhThPOycSgjJA2dw&usqp=CAU"),
                  )),
            )),
      ),
      ListTile(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.person_outlined),
            onPressed: () {},
          );
        }),
        title: const Text(
          "Profile",
          textScaleFactor: 1.5,
        ),
        subtitle: Text("Profile detail"),
        onTap: () {
          // Navigator.pop(context);
          // Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.filter_alt),
            onPressed: () {},
          );
        }),
        title: const Text(
          "Filter",
          textScaleFactor: 1.5,
        ),
        subtitle: Text("Filter your feed"),
        onTap: () {
          // Navigator.pushNamed(context, '/Filter');
        },
      ),
      Divider(),
      ListTile(
        title: const Text("Version : 1.0.1\nContact : @Suraj || @Dev"),
        onTap: () {},
      ),
    ],
  );
}

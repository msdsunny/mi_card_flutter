import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.red,
                ),
                Row(
                  children: [
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            offset: Offset(
                                0, 100), // changes position of shadow
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.blue,
                )
              ],
            ),
          ),
        ));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/104113705/original/6076831db34315e45bd2a31a9d79bb7b91d48e04/design-flat-style-minimalist-avatar-of-you.jpg'),
                ),
                Text(
                  'Sunny Maurya',
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',
                  ),
                ),
                Text(
                  'Software Developer'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.teal.shade100,
                    fontSize: 20,
                    fontFamily: 'SourceSansPro-Regular',
                    letterSpacing: 2.5,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                    thickness: 1.0,
                  )
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                  child: ListTile(
                      leading: Icon(Icons.phone, color: Colors.teal.shade900),
                      title: Text(
                        '+91 9702614183',
                        style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'SourceSansPro-Regular',
                            fontSize: 20.0),
                      )),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.email, color: Colors.teal.shade900),
                    title: Text(
                      'sunnymaurya@gmail.com',
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'SourceSansPro-Regular',
                          fontSize: 20.0),
                    )
                  ),
                )
              ],
            )),
      ),
    );
  }
}

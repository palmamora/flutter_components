import 'dart:html';

import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://lanoticia-newspack.newspackstaging.com/wp-content/uploads/2020/11/stan-lee-enfermedad.jpg'),
              radius: 30.0,
              ),
            padding: EdgeInsets.all(5.0),
          ),
          Container(
            child: CircleAvatar(child: Text('SL'),backgroundColor: Colors.brown,),
            margin: EdgeInsets.only(right: 10.0),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.exit_to_app),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Center(
        child: FadeInImage(image: NetworkImage('https://lanoticia-newspack.newspackstaging.com/wp-content/uploads/2020/11/stan-lee-enfermedad.jpg'),
        placeholder: AssetImage('assets/loader.gif'),
        fadeInDuration: Duration(milliseconds: 2000),
        ),
      ),
    );
  }
}
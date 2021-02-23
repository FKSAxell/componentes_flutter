import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        actions: [
          Container(
            child: CircleAvatar(
              child: Text("AC"),
              backgroundColor: Colors.brown,
              foregroundColor: Colors.white,
            ),
            margin: EdgeInsets.only(right: 10.0),
          ),
          Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://configuracionde.com/wp-content/uploads/2020/05/mixwell.jpeg"),
              radius: 25.0,
            ),
            padding: EdgeInsets.all(6.0),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              "https://i.ytimg.com/vi/si5695r9e0Y/maxresdefault.jpg"),
          placeholder: AssetImage("assets/loading.gif"),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}

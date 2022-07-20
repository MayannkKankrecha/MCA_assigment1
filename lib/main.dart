import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text('My App'),),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text('one'),
                  color: Colors.red,
                ),
                Container(
                  padding: EdgeInsets.all(40),
                  child: Text('two'),
                  color: Colors.yellow,
                ),
                Container(
                  padding: EdgeInsets.all(60),
                  child: Text('tree'),
                  color: Colors.green,
                ),
              ],
            ),
            VerticalDivider(color: Colors.black,width: 1,),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text('one'),
                  color: Colors.red,
                ),
                Container(
                  padding: EdgeInsets.all(40),
                  child: Text('two'),
                  color: Colors.yellow,
                ),
                Container(
                  padding: EdgeInsets.all(60),
                  child: Text('tree'),
                  color: Colors.green,
                ),
                Divider(color: Colors.black, height: 1,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
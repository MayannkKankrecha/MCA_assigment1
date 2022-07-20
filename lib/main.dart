import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  var num=0,two=0,three=0;
  void fun(){
    // num = num + 1;
    setState(() {
      num = num + 1;
      two = num * num;
      three = two * two;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(title: Text('My App'),),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text('$num',style: TextStyle(
                    fontSize: 20,
                  ),),
                  color: Colors.red,
                ),
                Container(
                  padding: EdgeInsets.all(40),
                  child: Text('$two',style: TextStyle(
                    fontSize: 20,
                  ),),
                  color: Colors.yellow,
                ),
                Container(
                  padding: EdgeInsets.all(60),
                  child: Text('$three',style: TextStyle(
                    fontSize: 20,
                  ),),
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
                  child: Text('$num',style: TextStyle(
                    fontSize: 20,
                  )),
                  color: Colors.red,
                ),
                Container(
                  padding: EdgeInsets.all(40),
                  child: Text('$two',style: TextStyle(
                    fontSize: 20,
                  )),
                  color: Colors.yellow,
                ),
                Container(
                  padding: EdgeInsets.all(60),
                  child: Text('$three',style: TextStyle(
                    fontSize: 20,
                  )),
                  color: Colors.green,
                ),
                Divider(color: Colors.black, height: 1,),
              ],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            fun();
          },
          child: Text("$num"),
        ),
      ),
    );
  }
}



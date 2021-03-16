
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num1,num2,op=0;
  final TextEditingController t1=TextEditingController(text: '0');
  final TextEditingController t2=TextEditingController(text: '0');

  void doAdd(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      op=num1+num2;
    });

  }
  void doSub(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      op=num1-num2;
    });

  }
  void doMultiply(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      op=num1*num2;
    });

  }
  void doDivide(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      op=num1~/num2;
    });

  }
  void doClear(){
    setState(() {
      t1.text='0';
      t2.text='0';
      op=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Output :$op',
             style: TextStyle(
               fontWeight: FontWeight.bold,
               color: Colors.deepPurple,
               fontSize: 20.0
             ),
            ),
           TextField(
             keyboardType: TextInputType.number,
             decoration: InputDecoration(

               hintText: 'enter number 1',
             ),
             controller: t1,
           ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'enter number 2',
              ),
              controller: t2,

            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                    child: Text('+'),
                    color:Colors.blue,
                    onPressed: doAdd),
                Padding(padding: EdgeInsets.only(top: 20.0,right: 20.0)),
                MaterialButton(
                    child: Text('-'),
                    color:Colors.blue,
                    onPressed: doSub),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                    child: Text('*'),
                    color:Colors.blue,
                    onPressed: doMultiply),
                Padding(padding: EdgeInsets.only(top: 20.0,right: 20.0)),
                MaterialButton(
                    child: Text('/'),
                    color:Colors.blue,
                    onPressed: doDivide),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(top: 20.0,right: 20.0)),
                MaterialButton(
                    child: Text('clear'),
                    color:Colors.blue,
                    onPressed: doClear),


              ],
            )

          ],
        ),
      ),
    );
  }
}

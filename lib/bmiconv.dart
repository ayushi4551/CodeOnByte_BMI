import 'package:bmi_cal/loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI culoter',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyLogin(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key?key}): super(key:key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var wcontroller= TextEditingController();
  var fcontroller= TextEditingController();
  var icontroller= TextEditingController();
  var agecontroller=TextEditingController();
  var ans = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI calculator'),
        ),
        body:Center(
          child: Container(
            color: Colors.greenAccent,
            child: Column(
              children: [
                const Text('BMI',style: TextStyle(
                  fontSize: 38,fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),),

                TextField(
                  controller:wcontroller ,
                  decoration: const InputDecoration(
                      label: Text('enter your weight (in kg)'),
                      prefixIcon: Icon(Icons.line_weight)
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10,),

                TextField(
                  controller:fcontroller ,
                  decoration: const InputDecoration(
                      label: Text('enter your height (in feet)'),
                      prefixIcon: Icon(Icons.line_weight)
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10,),

                TextField(
                  controller: icontroller,
                  decoration: const InputDecoration(
                    label: Text('enter your height (in inch) '),
                    prefixIcon: Icon(Icons.line_weight),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10,),
                TextField(
                  controller: agecontroller,
                  decoration: const InputDecoration(
                    label: Text('enter your age'),
                    prefixIcon: Icon(Icons.line_weight),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10,),
                Container(
                  child: ElevatedButton(onPressed: (){
                    var weight = wcontroller.text.toString();
                    var feet= fcontroller.text.toString();
                    var inc = icontroller.text.toString();
                    if(weight!="" && feet!="" && inc!="") {
                      var iwt =int.parse(weight);
                      var ift=int.parse(feet);
                      var iinch= int.parse(inc);
                      var tinch= (ift*12)+iinch;

                      var tcm= tinch*2.54;
                      var tm=tcm/100;
                      var bmi = iwt/(tm*tm);
                      var messg="";
                      if(bmi>25){
                        messg="You are ovrtweight";
                      }
                      else if(bmi<18){
                        messg="You are underweight";
                      }
                      else {
                        messg= " You are healthy";
                      }
                      setState(() {
                        ans= "$messg\nYour BMI is: ${bmi.toStringAsFixed(2)}";
                      });
                    }
                    else{
                      setState(() {
                        ans="please fill all the required feilds";
                      });
                    }


                  }, child:const Text('calculate')),
                ),
                Text(ans,style: const TextStyle(fontSize: 27),)
              ],
            ),
          ),
        )
    );
  }
}


import 'package:bmi_cal/bmiconv.dart';
import 'package:flutter/material.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.blue,
       body:Stack(
           children: [
       Container(
       padding: const EdgeInsets.only(left:40,top:120),
       child: const Text('Register Here',style: TextStyle(
           color: Colors.white,
           fontSize: 40),
       ),
     ),
     SingleChildScrollView(
     child: Container(
     padding:EdgeInsets.only(top:MediaQuery.of(context).size.height*.3,right:30,left: 30),
    child: Column(
    children:[
    TextField(
    decoration: InputDecoration(
    fillColor: Colors.white,
    filled: true,
    hintText:'email',
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10)
    )
    ),
    ),
      const SizedBox(
    height: 10,
    ),
    TextField(
    obscureText: true,
    decoration: InputDecoration(
    fillColor: Colors.white,
    filled: true,
    hintText:'set password',
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10)
    )
    ),
    ),
      const SizedBox(height:20,),
      TextField(
     obscureText: true,
     decoration: InputDecoration(
         fillColor: Colors.white,
         filled: true,
         hintText:'re enter password',
         border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(10)
         )
     ),
      ),
      const SizedBox(height: 20,),
      ElevatedButton(onPressed:(){
     Navigator.push(context, MaterialPageRoute(builder: (buildcontext){
       return const MyHomePage();
     },),);
      },
     child: const Text('sign up',style: TextStyle(
       fontSize: 20,
       color: Colors.black,
     ),),),
      const SizedBox(height: 20,),
      FloatingActionButton(
     child: const Icon(Icons.arrow_back),
     onPressed: (){
       Navigator.pop(context);
     },
      ),
     ],
      ),
    )
     )
  ]
     )
    );
  }
}

import 'package:bmi_cal/main.dart';
import 'package:bmi_cal/registerpage.dart';
import'package:flutter/material.dart';
class MyLogin extends StatefulWidget {
  const MyLogin({Key?key}):super(key:key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bmi Calculator'),),
        backgroundColor: Colors.blue,
        body:Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left:90,top:50),
              child: const Text('welcome',style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 40),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding:EdgeInsets.only(top:MediaQuery.of(context).size.height*.2,right:30,left: 20),
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
                          hintText:'password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('login in here',style: TextStyle(
                            fontSize: 30,fontWeight: FontWeight.bold
                        ),),
                       SizedBox(height: 20,),
                      ]
              ),
                               const SizedBox(height: 20,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 ElevatedButton(onPressed:(){
                                   Navigator.push(context, MaterialPageRoute(builder: (buildcontext){
                                     return const MyHomePage();
                                   },),);
                                 },
                                     child: const Text('login',style: TextStyle(
                                       fontSize: 20,
                                       color: Colors.black,
                                     ),),),
                                 const SizedBox(width: 20,),
                                 ElevatedButton(onPressed:(){
                            Navigator.push(context, MaterialPageRoute(builder: (buildcontext){
                               return const RegisterPage();
                              },),);
                                 },
                                   child: const Text('sign up',style: TextStyle(
                                     fontSize: 20,
                                     color: Colors.black,
                                   ),),),
    ],
                               )

  ]
            )
              )
    )
    ]
    )
    );
  }
}

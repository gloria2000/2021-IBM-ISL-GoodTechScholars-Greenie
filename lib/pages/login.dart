import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          colors: [Color(0xff2B7D4E), Color(0xff0C6F36)])),
        padding: const EdgeInsets.all(20.0),
        child: 
            Column(
              children: <Widget>[
                const SizedBox(height: 50,),
                const Padding(padding: EdgeInsets.only(left: 20),
                child : Image(image: AssetImage('assets/logo.png')),),
                const SizedBox(height: 50,), 
                  const SizedBox(
                    width: 350,
                    child:  TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      prefixIcon : Icon(Icons.email, color: Colors.blueGrey,),
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(30.0),),
                          borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(30.0),),
                          borderSide: BorderSide(color: Colors.green),
                      ),
                      filled: true,
                      hintText: "Email address:",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),),
                  const SizedBox(height: 15),
                  const SizedBox(
                    width : 350,
                  child : TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      prefixIcon : Icon(Icons.lock, color: Colors.blueGrey,),
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(30.0),),
                          borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(30.0),),
                          borderSide: BorderSide(color: Colors.green),
                      ),
                      filled: true,
                      hintText: "Password:",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),),
                const SizedBox(height: 80,),
                      ElevatedButton(
                        child: const Text('Login', 
                            style: TextStyle(
                              color: Colors.white, 
                              fontSize: 16.0, 
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),),
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff32B067),
                          shadowColor: const Color(0xff084A24),
                          fixedSize : const Size(180, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )
                          ),
                        ),
                const SizedBox(height: 20,),
                const Text('Forgot password?', 
                        style: TextStyle(color: Colors.white, decoration: TextDecoration.underline,fontFamily: 'Poppins'),),
              ],
            ),
      ),
    );
  }
}
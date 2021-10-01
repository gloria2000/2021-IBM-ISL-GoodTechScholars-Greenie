import 'package:flutter/material.dart';
import '../ui/utils.dart';

class Event extends StatelessWidget {
  const Event({ Key? key }) : super(key: key);

  //var greenieTheme = new GreenieTheme();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
  title: const Text("Events"),
  backgroundColor: const Color(0xff2B7D4E),
  ),
      body: Column(
        children: <Widget>[ 
            const SizedBox(height: 15),
            const Align(alignment: Alignment.topLeft,
            child:Text('  HOST EVENT', 
              textAlign: TextAlign.left,
              style: TextStyle(color: Color(0xff2B7D4E), fontWeight: FontWeight.bold),),),
            const SizedBox(height: 10),
                Row(children: <Widget>[
                  const SizedBox(height: 40, width: 10),
                  Container(
                    height: 40,
                    width: 100,
                    padding: const EdgeInsets.all(10),
                    color: const Color(0xff088A3F),
                    child:const Text('EVENT TITLE', style: TextStyle(color: Colors.white, fontSize: 12),)
                    ),
                  const SizedBox(height: 40, width: 5),
                  Container(
                    height: 40,
                    width: 230,
                    //color: const Color(0xffE5E5E5),
                    decoration: const BoxDecoration(color: Color(0xffE5E5E5),borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: const TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(5.0),),
                          borderSide: BorderSide(color: Colors.green),),
                      enabledBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(5.0),),
                          borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  )),
                ],),


                const SizedBox(height: 5),
                Row(children: <Widget>[
                  const SizedBox(height: 40, width: 10),
                  Container(
                    height: 40,
                    width: 100,
                    padding: const EdgeInsets.all(7),
                    color: const Color(0xff088A3F),
                    child:const Text('PLACE/PLATFORM', style: TextStyle(color: Colors.white, fontSize: 11),)
                    ),
                  const SizedBox(height: 40, width: 5),
                  Container(
                    height: 40,
                    width: 230,
                    //color: const Color(0xffE5E5E5),
                    decoration: const BoxDecoration(color: Color(0xffE5E5E5),borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: const TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(5.0),),
                          borderSide: BorderSide(color: Colors.green),),
                      enabledBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(5.0),),
                          borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  )),
                ],),
                const SizedBox(height: 5),
                Row(
                  children: <Widget>[
                    const SizedBox(height: 40, width: 10),
                  Container(
                    height: 40,
                    width: 60,
                    padding: const EdgeInsets.all(10),
                    color: const Color(0xff088A3F),
                    child:const Text('DATE', style: TextStyle(color: Colors.white, fontSize: 12),)
                    ),
                  const SizedBox(height: 40, width: 5),
                  Container(
                    height: 40,
                    width: 100,
                    //color: const Color(0xffE5E5E5),
                    decoration: const BoxDecoration(color: Color(0xffE5E5E5),borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: const TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(5.0),),
                          borderSide: BorderSide(color: Colors.green),),
                      enabledBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(5.0),),
                          borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  )),

                  const SizedBox(height: 50, width: 5),
                  Container(
                    height: 40,
                    width: 60,
                    padding: const EdgeInsets.all(10),
                    color: const Color(0xff088A3F),
                    child:const Text('TIME', style: TextStyle(color: Colors.white, fontSize: 12),)
                    ),
                  const SizedBox(height: 40, width: 5),
                  Container(
                    height: 40,
                    width: 100,
                    //color: const Color(0xffE5E5E5),
                    decoration: const BoxDecoration(color: Color(0xffE5E5E5),borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: const TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(5.0),),
                          borderSide: BorderSide(color: Colors.green),),
                      enabledBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(5.0),),
                          borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  )),

                  ],
                ),

                const SizedBox(height: 5),
                Row(children: <Widget>[
                  const SizedBox(height: 40, width: 10),
                  Container(
                    height: 40,
                    width: 100,
                    padding: const EdgeInsets.all(10),
                    color: const Color(0xff088A3F),
                    child:const Text('DESCRIPTION', style: TextStyle(color: Colors.white, fontSize: 12),)
                    ),
                  const SizedBox(height: 40, width: 5),
                  Container(
                    height: 40,
                    width: 230,
                    //color: const Color(0xffE5E5E5),
                    decoration: const BoxDecoration(color: Color(0xffE5E5E5),borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: const TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(5.0),),
                          borderSide: BorderSide(color: Colors.green),),
                      enabledBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(5.0),),
                          borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  )),
                ],),


                const SizedBox(height: 5),
                Row(children: <Widget>[
                  const SizedBox(height: 40, width: 10),
                  Container(
                    height: 40,
                    width: 100,
                    padding: const EdgeInsets.all(10),
                    color: const Color(0xff088A3F),
                    child:const Text('TAGS', style: TextStyle(color: Colors.white, fontSize:12),)
                    ),
                  const SizedBox(height: 40, width: 5),
                  Container(
                    height: 40,
                    width: 230,
                    //color: const Color(0xffE5E5E5),
                    decoration: const BoxDecoration(color: Color(0xffE5E5E5),borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: const TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(5.0),),
                          borderSide: BorderSide(color: Colors.green),),
                      enabledBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(5.0),),
                          borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  )),
                ],),

                const SizedBox(height: 10),
                const Divider(
                  thickness: 2,
                  indent: 5,
                  endIndent: 5,
                  color: Color(0xffE5E5E5),
                ),
                const SizedBox(height: 10),
                const Align(alignment: Alignment.topLeft,
                child: Text('  SEARCH EVENT', 
              textAlign: TextAlign.left,
              style: TextStyle(color: Color(0xff2B7D4E), fontWeight: FontWeight.bold),),),
            const SizedBox(height: 10),

            Row(
              children: <Widget>[
                const SizedBox(
                  width: 5,
                ),
                Container(
                    height: 40,
                    width: 250,
                    //color: const Color(0xffE5E5E5),
                    decoration: const BoxDecoration(color: Color(0xffE5E5E5),borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    child: const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.blueGrey,),
                      focusedBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(30.0),),
                          borderSide: BorderSide(color: Colors.green),),
                      enabledBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(30.0),),
                          borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  )),

                  const SizedBox(
                    width: 10,
                    height: 40
                  ),
                  ElevatedButton(
                        child: const Text('Search', 
                            style: TextStyle(
                              color: Colors.white, 
                              fontSize: 14.0, 
                              )
                              ,),
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff088A3F),
                          shadowColor: const Color(0xff084A24),
                          fixedSize : const Size(80, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )
                          ),
                        ),
              ],
            ),

            const SizedBox(height: 5),
            const Align(alignment: Alignment.topLeft,
            child: Text('     FILTERS', 
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),),
            const SizedBox(height: 3),

            Row(children: <Widget>[
                  const SizedBox(height: 40, width: 10),
                  Container(
                    height: 40,
                    width: 100,
                    padding: const EdgeInsets.all(10),
                    color: const Color(0xff088A3F),
                    child:const Text('LOCATION', style: TextStyle(color: Colors.white, fontSize: 12),)
                    ),
                  const SizedBox(height: 40, width: 5),
                  Container(
                    height: 40,
                    width: 230,
                    //color: const Color(0xffE5E5E5),
                    decoration: const BoxDecoration(color: Color(0xffE5E5E5),borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: const TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(5.0),),
                          borderSide: BorderSide(color: Colors.green),),
                      enabledBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(5.0),),
                          borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  )),
                ],),


              const SizedBox(height: 5),
                Row(
                  children: <Widget>[
                    const SizedBox(height: 40, width: 10),
                  Container(
                    height: 40,
                    width: 60,
                    padding: const EdgeInsets.all(10),
                    color: const Color(0xff088A3F),
                    child:const Text('TO', style: TextStyle(color: Colors.white, fontSize: 12),)
                    ),
                  const SizedBox(height: 40, width: 5),
                  Container(
                    height: 40,
                    width: 100,
                    //color: const Color(0xffE5E5E5),
                    decoration: const BoxDecoration(color: Color(0xffE5E5E5),borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: const TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(5.0),),
                          borderSide: BorderSide(color: Colors.green),),
                      enabledBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(5.0),),
                          borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  )),

                  const SizedBox(height: 50, width: 5),
                  Container(
                    height: 40,
                    width: 60,
                    padding: const EdgeInsets.all(10),
                    color: const Color(0xff088A3F),
                    child:const Text('FROM', style: TextStyle(color: Colors.white, fontSize: 12),)
                    ),
                  const SizedBox(height: 40, width: 5),
                  Container(
                    height: 40,
                    width: 100,
                    //color: const Color(0xffE5E5E5),
                    decoration: const BoxDecoration(color: Color(0xffE5E5E5),borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: const TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(5.0),),
                          borderSide: BorderSide(color: Colors.green),),
                      enabledBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(5.0),),
                          borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  )),

                  ],
                ),

                const SizedBox(height: 5),
                Row(children: <Widget>[
                  const SizedBox(height: 40, width: 10),
                  Container(
                    height: 40,
                    width: 100,
                    padding: const EdgeInsets.all(10),
                    color: const Color(0xff088A3F),
                    child:const Text('TAGS', style: TextStyle(color: Colors.white, fontSize:12),)
                    ),
                  const SizedBox(height: 40, width: 5),
                  Container(
                    height: 40,
                    width: 230,
                    //color: const Color(0xffE5E5E5),
                    decoration: const BoxDecoration(color: Color(0xffE5E5E5),borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: const TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(5.0),),
                          borderSide: BorderSide(color: Colors.green),),
                      enabledBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.all(Radius.circular(5.0),),
                          borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  )),
                ],),
                
              //),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: 1,
      //backgroundColor: greenieTheme.primaryColor,
      backgroundColor: const Color(0xff2B7D4E),
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset('assets/icons/events.png'),
          label: " ",
        ),
        BottomNavigationBarItem(
          icon:  Image.asset('assets/icons/notif.png'),
          label: "",
        ),
        BottomNavigationBarItem(
          icon:  Image.asset('assets/icons/feeds.png'),
          label: " ",
        ),
        BottomNavigationBarItem(
          icon:  Image.asset('assets/icons/Vectorsearch.png'),
          label: " ",
        ),
        BottomNavigationBarItem(
          icon:  Image.asset('assets/icons/profile.png'),
          label: " ",
        ),  
      ],
    ),
    );

  }
}
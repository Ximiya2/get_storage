import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../storage/get_storage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var controller = TextEditingController();

  int son1 = int.parse(box.read('bomdod') ?? '0') ;
  // int son2 = 0;
  // int son3 = 0;
  // int son4 = 0;
  // int son5 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              box.erase();
              son1 = 0;
              setState(() {});

            }, child: Text('clear')),
            Text('Qazo namozlar', style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 25
            ),),
            Text('Boshlangan sana: 28.11.2022',style: TextStyle(
                color: Colors.white,
                fontSize: 15
            ),),
            SizedBox(height: 30,),
            Container(
              height: 60,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade600
              ),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.sunny, color: Colors.orange,),
                  SizedBox(width: 10,),
                  Text('Bomdod', style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20
                  ),),
                  SizedBox(width: 100,),
                  IconButton(
                    onPressed: (){

                      setState(() {
                        if(son1 != 0)
                        {
                          son1--;
                        };
                      });
                      box.write('bomdod', son1.toString());
                    },
                    icon: Icon(Icons.remove_circle, color: Colors.white,size: 30,)),
                  SizedBox(width: 10,),
                  Text(son1.toString()),
                  SizedBox(width: 10,),
                  IconButton(
                      onPressed: (){

                        setState(() {
                          if(son1 >= 0)
                          {
                            son1++;
                          };

                        });
                        box.write('bomdod', son1.toString());
                      },
                      icon: const Icon(Icons.add_circle, color: Colors.white,size: 30,),),

                ],
              ),
            ),
            // SizedBox(height: 20,),
            // Container(
            //   height: 60,
            //   width: 360,
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10),
            //       color: Colors.grey.shade600
            //   ),
            //   child: Row(
            //     children: [
            //       SizedBox(width: 10,),
            //       Icon(Icons.sunny, color: Colors.orange,),
            //       SizedBox(width: 10,),
            //       Text('Peshin', style: TextStyle(
            //           color: Colors.white,
            //           fontWeight: FontWeight.w500,
            //           fontSize: 20
            //       ),),
            //       SizedBox(width: 100,),
            //       IconButton(
            //           onPressed: (){
            //             box.write('peshin', son2);
            //             setState(() {
            //               son2--;
            //             });
            //           },
            //           icon: Icon(Icons.remove_circle, color: Colors.white,size: 30,)),
            //       SizedBox(width: 10,),
            //       Text(box.read('peshin')?? '0'),
            //       SizedBox(width: 10,),
            //       IconButton(
            //         onPressed: (){
            //           box.write('peshin', controller.text);
            //           setState(() {
            //             son2++;
            //           });
            //         },
            //         icon: Icon(Icons.add_circle, color: Colors.white,size: 30,),),
            //
            //     ],
            //   ),
            // ),
            // SizedBox(height: 20,),
            // Container(
            //   height: 60,
            //   width: 360,
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10),
            //       color: Colors.grey.shade600
            //   ),
            //   child: Row(
            //     children: [
            //       SizedBox(width: 10,),
            //       Icon(Icons.sunny, color: Colors.orange,),
            //       SizedBox(width: 10,),
            //       Text('Asr', style: TextStyle(
            //           color: Colors.white,
            //           fontWeight: FontWeight.w500,
            //           fontSize: 20
            //       ),),
            //       SizedBox(width: 100,),
            //       IconButton(
            //           onPressed: (){
            //             box.write('asr', son3);
            //             setState(() {
            //               son3--;
            //             });
            //           },
            //           icon: Icon(Icons.remove_circle, color: Colors.white,size: 30,)),
            //       SizedBox(width: 10,),
            //       Text(box.read('asr') ?? '0'),
            //       SizedBox(width: 10,),
            //       IconButton(
            //         onPressed: (){
            //           box.write('asr', controller.text);
            //           setState(() {
            //             son3++;
            //           });
            //         },
            //         icon: Icon(Icons.add_circle, color: Colors.white,size: 30,),),
            //
            //     ],
            //   ),
            // ),
            // SizedBox(height: 20,),
            // Container(
            //   height: 60,
            //   width: 360,
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10),
            //       color: Colors.grey.shade600
            //   ),
            //   child: Row(
            //     children: [
            //       SizedBox(width: 10,),
            //       Icon(Icons.sunny, color: Colors.orange,),
            //       SizedBox(width: 10,),
            //       Text('Shom', style: TextStyle(
            //           color: Colors.white,
            //           fontWeight: FontWeight.w500,
            //           fontSize: 20
            //       ),),
            //       SizedBox(width: 100,),
            //       IconButton(
            //           onPressed: (){
            //             box.write('shom', son4);
            //             setState(() {
            //               son4--;
            //             });
            //           },
            //           icon: Icon(Icons.remove_circle, color: Colors.white,size: 30,)),
            //       SizedBox(width: 10,),
            //       Text(box.read('shom')?? '0'),
            //       SizedBox(width: 10,),
            //       IconButton(
            //         onPressed: (){
            //           box.write('shom', son4);
            //           setState(() {
            //             son4++;
            //           });
            //         },
            //         icon: Icon(Icons.add_circle, color: Colors.white,size: 30,),),
            //
            //     ],
            //   ),
            // ),
            // SizedBox(height: 20,),
            // Container(
            //   height: 60,
            //   width: 360,
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10),
            //       color: Colors.grey.shade600
            //   ),
            //   child: Row(
            //     children: [
            //       SizedBox(width: 10,),
            //       Icon(Icons.sunny, color: Colors.orange,),
            //       SizedBox(width: 10,),
            //       Text('Xufton', style: TextStyle(
            //           color: Colors.white,
            //           fontWeight: FontWeight.w500,
            //           fontSize: 20
            //       ),),
            //       SizedBox(width: 100,),
            //       IconButton(
            //           onPressed: (){
            //             box.write('xufton', son5);
            //             setState(() {
            //               son5--;
            //             });
            //           },
            //           icon: Icon(Icons.remove_circle, color: Colors.white,size: 30,)),
            //       SizedBox(width: 10,),
            //       Text(box.read('xufton') ?? '0'),
            //       SizedBox(width: 10,),
            //       IconButton(
            //         onPressed: (){
            //           setState(() {
            //             son5++;
            //           });
            //           box.write('xufton', son5);
            //
            //         },
            //         icon: Icon(Icons.add_circle, color: Colors.white,size: 30,),),
            //
            //     ],
            //   ),
            // ),
            // SizedBox(height: 20,),
          ],
        ),
      ),
      //appBar: AppBar(title: Text('GetStorage'),),
      // body: Padding(
      //     padding: EdgeInsets.all(16),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       TextFormField(
      //         controller: controller,
      //         decoration: InputDecoration(
      //           hintText: 'Enter smth',
      //           border: OutlineInputBorder(),
      //         ),
      //       ),
      //       SizedBox(height: 20,),
      //       ElevatedButton(
      //           onPressed: (){
      //             box.write('key', controller.text);
      //             setState(() {});
      //           },
      //           child: Text('Save')),
      //       SizedBox(height: 30,),
      //       Text(box.read('key') ?? 'No text')
      //     ],
      //   ),
      // ),
    );
  }
}

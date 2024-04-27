//
// import 'package:ebasket/controller/splash_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
//
// class SplashScreen22 extends StatefulWidget {
//   @override
//   State<SplashScreen22> createState() => _SplashScreen22State();
// }
//
// class _SplashScreen22State extends State<SplashScreen22> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return GetBuilder(
//       dispose: (_) {
//         print("Dispose spalash");
//       },
//       builder: (_) {
//         return Scaffold(
//           backgroundColor: Colors.white,
//           body: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               SizedBox(
//                 height: 30,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30.0),
//                 ),
//                 child: Center(
//                   child: Image.network(
//                     "https://grocery.ebasket.com.bd/_next/image?url=https%3A%2F%2Fgrocery.ebasket.com.bd%2Fapi%2Fstorage%2F2545%2FeBasket-Grocery-Logo_Revarsed_Color-185X58.png&w=1920&q=75",
//                     height: 200,
//                     width: 150,
//                     fit: BoxFit.cover,
//                     // width: size.width,
//                   ),
//                 ),
//               ),
//
//
//               // Align(
//               //   alignment: Alignment.bottomCenter,
//               //   child: CircularProgressIndicator(
//               //     color: Colors.amber,
//               //   ),
//               // )
//             ],
//           ),
//         );
//       },
//       init: SpalashController(),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/spalash_controller.dart';

class SplashScreen22 extends StatefulWidget {
  const SplashScreen22({Key? key}) : super(key: key);

  @override
  State<SplashScreen22> createState() => _SplashScreen22State();
}

class _SplashScreen22State extends State<SplashScreen22> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder(
      dispose: (_) {
        print("Dispose spalash");
      },
      builder: (_) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),

                  child: Center(
                    child: Image.asset(
                      "assets/images/a.png",
                      height: 200,
                      width: 200,
                      fit: BoxFit.contain,
                      // width: size.width,
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height: 40
              ),
              Center(child: Text("Aram Bangladesh",style: TextStyle(fontSize: 35,color: Colors.black,fontWeight: FontWeight.w500),)),
              SizedBox(
                height: 10
              ),
              Center(child: Text("A trusted online shopping",style: TextStyle(fontSize: 16,color: Colors.black),))


              // Align(
              //   alignment: Alignment.bottomCenter,
              //   child: CircularProgressIndicator(
              //     color: Colors.amber,
              //   ),
              // )
            ],
          ),
        );
      },
      init: SpalashController(),
    );
  }
}

// import 'package:final_project/SignUp.dart';
// import 'package:final_project/LogIn.dart';
// import 'package:flutter/material.dart';
//
// class FirstScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF2B7A0B),
//       body: Padding(
//         padding: const EdgeInsets.all(25),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Text(
//                   "Welcome to our app",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 28,
//                     fontStyle: FontStyle.italic,
//                     // fontWeight: FontWeight.w700,
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 GestureDetector(
//                   onTap: (){
//                     Navigator.of(context).push(
//                         MaterialPageRoute(builder: (context){
//                       return Signup();
//                     })
//                     );
//                   },
//                   child: Text(
//                     "Sign up",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 28,
//                         decoration: TextDecoration.underline
//                     ),
//                   ),
//                 ),
//                 Text(
//                   "or",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 28
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){
//                     Navigator.of(context).push(
//                         MaterialPageRoute(builder: (context){
//                           return Login();
//                         })
//                     );
//                   },
//                   child: Text(
//                     "Login",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 28,
//                         decoration: TextDecoration.underline
//                     ),
//                   ),
//                 ),              ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

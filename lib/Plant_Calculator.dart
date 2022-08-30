import 'package:flutter/material.dart';
import 'logic.dart';
TextEditingController x = TextEditingController();
TextEditingController y = TextEditingController();
TextEditingController z = TextEditingController();
var m=calculateAverage(l: x.text,m: y.text,n: z.text);
class PlantCalculator extends StatefulWidget {
  static String routeName = 'PlantCalculator';

  @override
  State<PlantCalculator> createState() => _PlantCalculatorState();
}

class _PlantCalculatorState extends State<PlantCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      body: Container(
        padding: EdgeInsets.all(20),
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/plants3.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            SizedBox(height: 10,),
            TextFormField(
              onChanged: (v) {
                print(' ${v}');
              },
              controller: x,
              decoration: InputDecoration(
                  labelText: 'ادخل القياس الاول بالسنتيمترات',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  )),
            ),
            SizedBox(height: 20,),
            TextFormField(
              onChanged: (v) {
                print(' ${v}');
              },
              controller: y,
              decoration: InputDecoration(
                  labelText: 'ادخل القياس الثاني بالسنتيمترات',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  )),
            ),
            SizedBox(height: 20,),
            TextFormField(
              onChanged: (v) {
                print(' ${v}');
              },
              controller: z,
              decoration: InputDecoration(
                  labelText: 'ادخل الفترة الزمانية بين القياسين (بالايام)',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  )),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  return m;
                });        },
              child: Text(
                "Calculate",
                style: TextStyle(color: Colors.white,fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  fixedSize: const Size(300, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),

            // MaterialButton(
            //     onPressed: (){
            //   setState(() {
            //     return m;
            //   });        },child: Text('calculate',
            //     style: TextStyle(color: Colors.white,
            //         fontWeight: FontWeight.bold,fontSize: 25)),
            //     color: Colors.green),
            Card(
              color: Colors.white30,
              child: Text
                (m, style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize:20 ),),
            ),
            Card(
              color: Colors.white70,
              child: Text
                ('قم بتثبيت الفترة للزمانية وكرر القياس والمعدل الطبيعي يكون ثابت في مرحلة الانبات',
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize:20 ),),
            ),


          ],
        ),
      ),
    );
  }
}

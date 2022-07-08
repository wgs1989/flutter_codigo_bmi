import 'package:flutter/material.dart';

import 'package:flutter_codigo_bmi/bmi_brain.dart';
import 'package:flutter_codigo_bmi/reto4_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // home: HomePage(),
    );
  }
}

//final vs const

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BMIBrain mandarinaBrain = BMIBrain(height: 182, weight: 76);

  double valueHeight = 182.0;
  double valueWeight = 76.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff2b2d42),
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(
            fontFamily: 'Poppins-Regular',
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/image_bmi.png',
              height: 150.0,
            ),
            const Text(
              "Height",
              style: TextStyle(
                fontFamily: 'Poppins-Regular',
                fontSize: 16.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  // valueSlider.toInt().toString(),
                  valueHeight.toStringAsFixed(0),
                  style: const TextStyle(
                    fontSize: 28.0,
                    fontFamily: 'Poppins-Regular',
                  ),
                ),
                const SizedBox(
                  width: 4.0,
                ),
                const Text("cm"),
              ],
            ),
            Slider(
              value: valueHeight,
              min: 100.0,
              max: 200.0,
              activeColor: Colors.pinkAccent,
              // label: valueSlider.toInt().toString(),
              // divisions: 10,
              onChanged: (double mandarina) {
                valueHeight = mandarina;
                mandarinaBrain.height = valueHeight;
                setState(() {});
              },
            ),
            const Text(
              "Weight",
              style: TextStyle(
                fontFamily: 'Poppins-Regular',
                fontSize: 16.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  // valueSlider.toInt().toString(),
                  valueWeight.toStringAsFixed(0),
                  style: const TextStyle(
                    fontSize: 28.0,
                    fontFamily: 'Poppins-Regular',
                  ),
                ),
                const SizedBox(
                  width: 4.0,
                ),
                const Text("kg"),
              ],
            ),
            Slider(
              value: valueWeight,
              min: 10.0,
              max: 150.0,
              activeColor: Colors.pinkAccent,
              // label: valueSlider.toInt().toString(),
              // divisions: 10,
              onChanged: (double mandarina) {
                valueWeight = mandarina;
                mandarinaBrain.weight = valueWeight;
                setState(() {
                  print(mandarina);
                });
              },
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Calcular",
                ),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: Card(
                elevation: 12,
                margin: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 6.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: double.infinity,
                    ),
                    const Text(
                      "Resultado",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Poppins-Regular',
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      mandarinaBrain.getResult(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Poppins-Regular',
                        color: Colors.pinkAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      // bmi.toStringAsFixed(1),
                      mandarinaBrain.calculateBMI().toStringAsFixed(1),
                      style: const TextStyle(
                        fontSize: 60.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins-Regular',
                      ),
                    ),
                    Text(
                      mandarinaBrain.getInterpretation(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Poppins-Regular',
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
          ],
        ),
      ),
    );
  }
}

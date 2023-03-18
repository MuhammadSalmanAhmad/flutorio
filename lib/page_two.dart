import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Center(
            child: SizedBox(
              width: double.infinity,
              height: 400,
              child: Center(
                  child: Image(
                image: AssetImage('assets/image_two.png'),
                fit: BoxFit.cover,
              )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: const [
                 Text(
                  "Get your dream job",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30,),
                Text(
                  "Get your dream job and start working in a new company",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

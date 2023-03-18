import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutorio/onboarding_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then((value) => Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: ((context) {
          return Onboarding_Screen();
        }))));

    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 300,
                child: Center(
                    child: Image(
                  image: AssetImage('assets/logo.png'),
                  fit: BoxFit.cover,
                )),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            SpinKitFadingCube(
              color: Colors.blueGrey,
              size: 50,
            ),
          ],
        ));
  }
}

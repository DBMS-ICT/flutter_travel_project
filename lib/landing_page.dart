import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: GestureDetector(
            onTap: (){
                if (FocusScope
                    .of(context).hasFocus) {
                  FocusScope.of(context).unfocus();
                }
          
            },
            child: Column(
              children: [
                Container(
                  width: 550,
                  height: 500,
                  margin: const EdgeInsets.fromLTRB(100, 60, 100, 60),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/img1.jpeg'),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 150),
                  child: Text(
                    "Let's Enjoy A New World",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 150),
                  child: Text(
                    "Search the safe destination",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/SearchFly');
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.circular(30)),
                          padding: const EdgeInsets.fromLTRB(200, 20, 200, 20),
                          backgroundColor: const Color.fromRGBO(47, 118, 148, 1.0)),
                      child: const Text(
                        'Get Start',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SearchFlightPage extends StatefulWidget {
  const SearchFlightPage({super.key});

  @override
  State<SearchFlightPage> createState() => _SearchFlightPageState();
}

class _SearchFlightPageState extends State<SearchFlightPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Container(
              margin: const EdgeInsets.all(50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('assets/img2.png'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Hi Tazhna!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadiusDirectional.circular(100)),
                        width: 70,
                        height: 70,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              size: 45,
                              Icons.add_alert,
                              color: Colors.grey,
                            )),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(8, 0, 200, 0),
                    child: Text(
                      'Where you want to go?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextField(
                    style: const TextStyle(fontSize: 25),
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 25),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: const Icon(
                          Icons.search_rounded,
                          size: 40,
                        ),
                        prefixIconColor: Colors.grey,
                        prefixIconConstraints:
                            const BoxConstraints(maxWidth: 59),
                        hintText: 'Search a Flight',
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 20)),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(8, 0, 200, 0),
                    child: Text(
                      'Upcoming Trips',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/bookfly');
                    },
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(40, 25, 40, 25),
                      width: 700,
                      height: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: const Color.fromRGBO(28, 94, 133, 0.4)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '10 May ,12:30pm',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                '11 May ,08:15am',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'ABC',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'XYZ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromRGBO(
                                          173, 206, 225, 1.0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusDirectional.circular(
                                                  5))),
                                  onPressed: () {},
                                  child: const Text(
                                    'Abianca , Sodaium',
                                    style: TextStyle(
                                        color: Color.fromRGBO(28, 94, 133, 1.0),
                                        fontSize: 17),
                                  )),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromRGBO(
                                          173, 206, 225, 1.0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusDirectional.circular(
                                                  5))),
                                  onPressed: () {},
                                  child: const Text('Xyzaira , Filanto',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(28, 94, 133, 1.0),
                                          fontSize: 17))),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular Destinations',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2),
                        ),
                        Text(
                          'Viwe All',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              letterSpacing: 2),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                          color: Colors.white,
                          width: 210,
                          height: 320,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/img4.png'),
                              const Text(
                                'Rome',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Italy',
                                style: TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                          color: Colors.white,
                          width: 210,
                          height: 320,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/img5.png'),
                              const Text(
                                'Istanbul',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Turkey',
                                style: TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                          color: Colors.white,
                          width: 210,
                          height: 320,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/img3.png'),
                              const Text(
                                'Paris',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'France',
                                style: TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                          color: Colors.white,
                          width: 210,
                          height: 320,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/img3.png'),
                              const Text(
                                'Paris',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'France',
                                style: TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )

                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: Container(
                  //           padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                  //           color: Colors.white,
                  //           width: 210,
                  //           height: 320,
                  //           child: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               Image.asset('assets/img4.png'),
                  //               Text(
                  //                 'Rome',
                  //                 style: TextStyle(
                  //                     fontSize: 22,
                  //                     fontWeight: FontWeight.bold),
                  //               ),
                  //               Text(
                  //                 'Italy',
                  //                 style: TextStyle(fontSize: 16),
                  //               )
                  //             ],
                  //           )),
                  //     ),
                  //     SizedBox(width: 10),
                  //     Expanded(
                  //       child: Container(
                  //           padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                  //           color: Colors.white,
                  //           width: 210,
                  //           height: 320,
                  //           child: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               Image.asset('assets/img5.png'),
                  //               Text(
                  //                 'Istanbul',
                  //                 style: TextStyle(
                  //                     fontSize: 22,
                  //                     fontWeight: FontWeight.bold),
                  //               ),
                  //               Text(
                  //                 'Turkya',
                  //                 style: TextStyle(fontSize: 16),
                  //               )
                  //             ],
                  //           )),
                  //     ),
                  //     SizedBox(width: 10),
                  //     Expanded(
                  //       child: Container(
                  //         padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                  //         color: Colors.white,
                  //         width: 210,
                  //         height: 320,
                  //         child: Expanded(
                  //           child: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               Image.asset('assets/img3.png'),
                  //               Text(
                  //                 'Prise',
                  //                 style: TextStyle(
                  //                     fontSize: 22,
                  //                     fontWeight: FontWeight.bold),
                  //               ),
                  //               Text(
                  //                 'Frace',
                  //                 style: TextStyle(fontSize: 16),
                  //               )
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     )
                  //   ],
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff151a56),
        title: Text("Home",
            style: GoogleFonts.syne(fontSize: 20, color: Colors.grey)),
      ),
      body: ListView(
          //Image View
          children: [
            ImageSlideshow(
              width: double.infinity,
              height: 200,
              initialPage: 0,
              indicatorColor: Colors.blue,
              indicatorBackgroundColor: Colors.grey,
              onPageChanged: (value) {
                debugPrint('Page changed: $value');
              },
              children: [
                Image.asset(
                  'assets/slider1.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/slider2.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/slider3.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/slider4.jpg',
                  fit: BoxFit.cover,
                ),
              ],
            ),
            //Card Hospital View

            Card(
              borderOnForeground: true,
              color: const Color(0xffFFF1EE),
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.local_hospital,
                        color: Colors.black, size: 30),
                    title: Text('Shalby Hospital',
                        style: GoogleFonts.syne(
                            fontSize: 20, color: Colors.black)),
                    subtitle: Text(
                      'Ahmedabad,Gujarat,India',
                      style:
                          GoogleFonts.syne(fontSize: 18, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Information Regarding Doctors and Facilities',
                      style:
                          GoogleFonts.syne(fontSize: 15, color: Colors.black),
                    ),
                  ),

                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        // textColor: const Color(0xFF6200EE),
                        onPressed: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                        child: const Text('Book an Appoitment'),
                      ),
                      ElevatedButton(
                        // textColor: const Color(0xFF6200EE),
                        onPressed: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                        child: const Text('Feedback'),
                      ),
                    ],
                  ),

                  //Hospital Images slide show
                  ImageSlideshow(
                      width: double.infinity,
                      height: 100,
                      initialPage: 0,
                      indicatorColor: Colors.blue,
                      indicatorBackgroundColor: Colors.grey,
                      onPageChanged: (value) {
                        debugPrint('Page changed: $value');
                      },
                      autoPlayInterval: 2000,
                      isLoop: true,
                      children: [
                        Image.asset(
                          'assets/slider1.jpg',
                          fit: BoxFit.cover,
                        ),
                        Image.asset('assets/slider2.jpg')
                      ]),
                ],
              ),
            ),

            //Hospital 2
            Card(
              color: const Color(0xffFFF1EE),
              borderOnForeground: true,
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.local_hospital,
                        color: Colors.black, size: 30),
                    title: Text('Zydus Hospital',
                        style: GoogleFonts.syne(
                            fontSize: 20, color: Colors.black)),
                    subtitle: Text(
                      'Ahmedabad,Gujarat,India',
                      style:
                          GoogleFonts.syne(fontSize: 18, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Information Regarding Doctors and Facilities',
                      style:
                          GoogleFonts.syne(fontSize: 15, color: Colors.black),
                    ),
                  ),

                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        // textColor: const Color(0xFF6200EE),
                        onPressed: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                        child: const Text('Book an Appoitment'),
                      ),
                      ElevatedButton(
                        // textColor: const Color(0xFF6200EE),
                        onPressed: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                        child: const Text('Feedback'),
                      ),
                    ],
                  ),

                  //Hospital Images slide show
                  ImageSlideshow(
                      width: double.infinity,
                      height: 100,
                      initialPage: 0,
                      indicatorColor: Colors.blue,
                      indicatorBackgroundColor: Colors.grey,
                      onPageChanged: (value) {
                        debugPrint('Page changed: $value');
                      },
                      autoPlayInterval: 2000,
                      isLoop: true,
                      children: [
                        Image.asset(
                          'assets/slider3.jpg',
                          fit: BoxFit.cover,
                        ),
                        Image.asset('assets/slider4.jpg')
                      ]),

                  //Hospital 2
                ],
              ),
            ),
          ]),
    );
  }
}

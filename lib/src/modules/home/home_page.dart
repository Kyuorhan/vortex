/* import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vortex/shared/widget/slide/slides_widget.dart';
import '../../../shared/widget/slide/carrousel_widget.dart';
import '../util/home_page_json.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //final controller = HomeController();
  final pages = [
    Container(color: Colors.red),
    Container(color: Colors.blue),
  ];


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      //    body: Stack(
      //   size),
    );
  }

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      child: CarrouselWidget(
        onTap: () {},
      ));
      /* BOTOES */
      SizedBox(height: 25),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(recomended.length, (index) {
            return Padding(
                padding: EdgeInsets.only(
                    left: index == 0 ? 15 : 10,
                    right: index == (recomended.length - 1) ? 15 : 0),
                child: Container(
                    height: 60,
                    width: 125,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: NetworkImage(recomended[index]),
                          fit: BoxFit.cover,
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff00D99E).withOpacity(0.2),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 8),
                            color: Color(0x4960F9).withOpacity(.9),
                            spreadRadius: 5,
                            blurRadius: 600,
                          ),
                        ],
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        splashColor: Color(0xff4960F9),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                            constraints: const BoxConstraints(
                                minWidth: 50.0,
                                minHeight:
                                    10.0), // min sizes for Material buttons
                            alignment: Alignment.center,
                            child: Text('#CATEGORIAS',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600))),
                      ),
                    )));
          }),
        ),
      );
      SizedBox(height: 30);
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Text(
              "CONTINUE",
              style: TextStyle(color: grey),
            ),
            SizedBox(width: 5),
            Text(
              "ASSISTINDO",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            SizedBox(width: 8),
            Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.grey,
              size: 16,
            )
          ],
        ),
      );
      SizedBox(height: 25);
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(continueWatchings.length, (index) {
            return Padding(
              padding: EdgeInsets.only(
                  left: index == 0 ? 15 : 10,
                  right: index == (continueWatchings.length - 1) ? 15 : 0),
              child: InkWell(
                borderRadius: BorderRadius.circular(5),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => MovieDetailPage()));
                },
                child: Stack(
                  children: [
                    Container(
                      height: 180,
                      width: 125,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: NetworkImage(
                                continueWatchings[index]['imageUrl']),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: 125,
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 3,
                                  width: size.width,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  height: 3,
                                  width: continueWatchings[0]['timeline'],
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 3),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  continueWatchings[0]['name'],
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 14),
                                ),
                                Icon(
                                  LineIcons.playCircle,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}
 */
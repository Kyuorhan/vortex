/* import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:vortex/pages/movie_detail_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vortex/src/modules/util/home_page_json.dart';

class Slidesidget extends StatelessWidget {
  const SlidesWidget({Key? required Null Function() onTap})
    : super(key: key);

  @overrade
  SizedBox(height: 20),
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(action.length, (index) {
          return Padding(
            padding: EdgeInsets.only(
                left: index == 0 ? 15 : 10,
                right: index == (action.length - 1) ? 15 : 0),
            child: Container(
              height: 180,
              width: 125,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: NetworkImage(action[index]),
                    fit: BoxFit.cover,
                  )),
            ),
          );
        }),
      /*  */),
    );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
} */
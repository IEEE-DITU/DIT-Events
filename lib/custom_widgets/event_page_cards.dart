import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventPageCards extends StatelessWidget {
  const EventPageCards(
      {super.key,
      required this.categoryName,
      required this.imageList,
      required this.eventName});
  final String categoryName;
  final String eventName;
  final List<String> imageList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Title(
                        color: Colors.black,
                        child: Text(
                          categoryName,
                          style: GoogleFonts.inriaSerif(
                              fontWeight: FontWeight.w400, fontSize: 18),
                        )),
                    Icon(Icons.filter_list, color: Colors.grey, size: 20.0),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: SizedBox(
              width: 400,
              height: 150,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: imageList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                          width: 150,
                          child: Image.asset(
                            imageList[index],
                            width: 150,
                            height: 150,
                          ),
                        ),
                        Title(color: Colors.black,
                            child: Text(
                              eventName,
                              style: GoogleFonts.inriaSerif(
                                  fontWeight: FontWeight.w400, fontSize: 18),
                            ))
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

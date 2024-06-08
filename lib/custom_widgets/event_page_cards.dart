import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventPageCards extends StatelessWidget {
  const EventPageCards(
      {super.key,
      required this.categoryName,
      required this.imageList,
      required this.eventName});
  final String categoryName;
  final List<String> eventName;
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
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Title(
                          color: Colors.black,
                          child: Text(
                            categoryName,
                            style: GoogleFonts.inriaSerif(
                                fontWeight: FontWeight.w400, fontSize: 18),
                          )),
                      Icon(Icons.filter_list, color: Colors.grey, size: 32.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: SizedBox(
              width: 400,
              height: 300,
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
                          height: 290,
                          width: 250,
                          child: Column(
                            children: [
                              Image.asset(
                                imageList[index],
                                width: 200,
                                height: 260,
                              ),
                              Title(
                                  color: Colors.black,
                                  child: Text(
                                    eventName[index],
                                    style: GoogleFonts.inriaSerif(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20),
                                  ))
                            ],
                          ),
                        ),
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

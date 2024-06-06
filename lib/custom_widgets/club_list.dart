import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';

class ClubList extends StatelessWidget {
  const ClubList(
      {super.key, required this.categoryName, required this.imageList});
  final String categoryName;
  final List<String> imageList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //Padding(padding:const EdgeInsets.fromLTRB(100, 0, 100, 10)),
          Row(
            children: [
              Title(
                  color: Colors.black,
                  child: Text(
                    categoryName,
                    style: GoogleFonts.inriaSerif(
                        fontWeight: FontWeight.w400, fontSize: 18),
                  )),
            ],
          ),

          SizedBox(
            width: 400,
            height: 90,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    height: 110,
                    width: 130,
                    child: Image.asset(
                      imageList[index],
                      width: 100,
                      height: 100,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

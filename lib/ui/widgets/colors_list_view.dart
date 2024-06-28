import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ColorItem extends StatelessWidget {
  final bool isSelected;
  final Color color;
  const ColorItem({super.key, required this.isSelected, required this.color});

  @override
  Widget build(BuildContext context) {
    return isSelected ?  CircleAvatar(
      backgroundColor: Colors.white,
      radius: 38,
      child: CircleAvatar(
        radius: 34,
        backgroundColor: color,
      ),
    ) : CircleAvatar(
      radius: 38,
      backgroundColor: color,
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key,});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  List<Color> colors = [
    Color(0xffAc3931),
    Color(0xffE5D352),
    Color(0xffD9E76c),
    Color(0xff537D8D),
    Color(0xff482C3D),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                isSelected: currentIndex == index ? true : false ,
                color: colors[index],
              ),
            ),
          )),
    );
  }
}
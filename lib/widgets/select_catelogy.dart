import 'package:flutter/material.dart';

class SelectCategogy extends StatefulWidget {
  const SelectCategogy({super.key});

  @override
  State<SelectCategogy> createState() => _SelectCategogyState();
}

class _SelectCategogyState extends State<SelectCategogy> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.0,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          categoryButton(Icons.house_rounded, "Nhà"),
          categoryButton(Icons.villa_rounded, "Villa"),
          categoryButton(Icons.apartment_rounded, "Văn phòng"),
          categoryButton(Icons.other_houses_rounded, "Khác"),
        ],
      ),
    );
  }
}

Widget categoryButton(IconData icon, String? text) {
  return Container(
    margin: const EdgeInsets.all(18.0),
    padding: const EdgeInsets.all(8.0),
    width: 100.0,
    height: 100.0,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade100),
    ),
    child: InkWell(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Sử dụng named argument 'children'
          Icon(
            icon,
            size: 32,
            color: Colors.green,
          ),
          Text("$text")
        ],
      ),
    ),
  );
}

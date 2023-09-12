import 'package:flutter/material.dart';
import 'package:sancity/models/item_model.dart';
import 'package:sancity/screens/details_srceens.dart';
import 'package:sancity/widgets/house_cart.dart';

class SuggestionList extends StatefulWidget {
  final String? title;
  final List<Item> items;

  const SuggestionList(this.title, this.items, {Key? key}) : super(key: key);

  @override
  State<SuggestionList> createState() => _SuggestionListState();
}

class _SuggestionListState extends State<SuggestionList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Xem tất cả",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
          Container(
            height: 340.0,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.items.length,
              itemBuilder: (context, index) =>
                  ItemCard(widget.items[index], () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailsSrceen(widget.items[index])));
              }),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sancity/models/item_model.dart';
import 'package:sancity/widgets/search_field.dart';
import 'package:sancity/widgets/select_catelogy.dart';
import 'package:sancity/widgets/suggestion_list.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        toolbarHeight: 80.0,
        title: Row(children: [
          Icon(
            Icons.location_on,
            color: Colors.green.shade600,
          ),
          const Text(
            "Hồ Chí Minh, Việt Nam",
            style: TextStyle(
              color: Colors.black,
            ),
          )
        ]),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Colors.grey.shade600,
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // add widget here
              const SearchField(),
              const SelectCategogy(),
              const SizedBox(
                height: 20.0,
              ),
              SuggestionList("Đề xuất cho bạn", Item.recommendation),
              const SizedBox(
                height: 20.0,
              ),
              SuggestionList("Gần bạn", Item.nearby),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green.shade600,
        unselectedItemColor: Colors.grey.shade600,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorites"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: "Messages"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eapp/widgets/categorieswidget.dart';
import 'package:eapp/widgets/homeAppbar.dart';
import 'package:eapp/widgets/itemsWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const HomeAppbar(),
          Container(
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Color(0XFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(34),
                topRight: Radius.circular(34),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Search bar
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search here...",
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.camera_alt,
                          size: 27,
                          color: Color(0xFF4C53A5),
                        ),
                      ],
                    ),
                  ),

                  // Categories
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    child: const Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5),
                      ),
                    ),
                  ),
                  const CategoriesWidget(),

                  // Best Selling
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    child: const Text(
                      "Best Selling",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color(0xFF4C53A5),
                      ),
                    ),
                  ),

                  // Items Grid
                  const ItemsWidget(),
                ],
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {},
        height: 70,
        color: Color(0xFF4C53A5),
        items: [
          Icon(Icons.home, size: 30, color: Colors.white),

          Icon(CupertinoIcons.cart_fill, size: 30, color: Colors.white),

          Icon(Icons.list, size: 30, color: Colors.white),
        ],
      ),
    );
  }
}

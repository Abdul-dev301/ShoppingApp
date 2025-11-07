import 'package:eapp/pages/cartpage.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          const Icon(Icons.sort, size: 30, color: Color(0xff4c53A5)),
          const SizedBox(width: 20),
          const Text(
            "DP Shop",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Color(0xff4c53A5),
            ),
          ),
          const Spacer(),
          badges.Badge(
            position: badges.BadgePosition.topEnd(top: -10, end: -12),
            badgeStyle: const badges.BadgeStyle(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(7),
            ),
            badgeContent: const Text(
              "3",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartPage()),
                );
              },
              child: const Icon(
                Icons.shopping_bag_outlined,
                size: 30,
                color: Color(0xff4c53A5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

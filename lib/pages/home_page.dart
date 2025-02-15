import 'package:flutter/material.dart';
import 'package:news_app_two/widgets/catgories_list.dart';
import 'package:news_app_two/widgets/news_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              " Today's",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              " News",
              style: TextStyle(
                color: Color(0xFFFFD700),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: const SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CatgoriesList(),
          ),
         NewsBuilder(
           category: 'general',
         ),
        ],
      )),
    );
  }
}

/*
CatgoriesList());

Column(
                    children: [
            CatgoriesList(),
            Expanded(child: NewCatgoryNews()),
                    ],
                  ),


 */

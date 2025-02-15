import 'package:flutter/material.dart';
import 'package:news_app_two/widgets/news_builder.dart';

class CatgoryPage extends StatelessWidget {
  const CatgoryPage({super.key, required this.category});
 final String category;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:CustomScrollView(
        slivers: [
          NewsBuilder(
            category: category,
          ),
        ],
      )
    );
  }
}

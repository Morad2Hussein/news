import 'package:flutter/material.dart';
import 'package:news_app_two/models/catgory_model.dart';
import 'package:news_app_two/pages/catgory_page.dart';

class CatgoryCard extends StatelessWidget {
  const CatgoryCard({
    super.key, required this.model,
  });
  final CatgoryModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return  CatgoryPage(category:model.text,);
        }));
      },
      child: Container(
        height: 90,
        width: 210,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:  DecorationImage(
              image: AssetImage(
                model.image,
                // Direct image URL
              ),
              fit: BoxFit.cover,
            )),
        child:  Center(
            child: Text(
          model.text,
          style: const TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}

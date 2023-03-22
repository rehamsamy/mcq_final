import 'package:flutter/material.dart';
import 'package:mcq_final/helpler/core_classes/constants.dart';
import 'package:mcq_final/helpler/custom_widgets/app_cached_image.dart';
import 'package:mcq_final/helpler/custom_widgets/app_text.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: const [
          AppCashedImage(imageUrl: userAvatar,borderWidth: 5,borderColor:kPurpleColor,
          radius: 40,),
          SizedBox(height: 30,),
          AppText('text',fontSize: 20,fontWeight: FontWeight.bold,)
        ],
      ),
    );
  }
}

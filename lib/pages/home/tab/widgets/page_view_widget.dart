import 'package:flutter/material.dart';
import 'package:uzum/components/constants/mediaquery.dart';

class PageViewWidget extends StatelessWidget {
  String image;
  PageViewWidget({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: m_h(context) * 0.5,
      width: m_w(context) * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
    );
  }
}

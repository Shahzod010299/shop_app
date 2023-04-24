import 'package:flutter/material.dart';
import 'package:uzum/components/constants/mediaquery.dart';
import 'package:uzum/data/models/product_model.dart';

class ProductWidget extends StatefulWidget {
  Product product;
  ProductWidget({required this.product, super.key});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: m_h(context) * 0.22,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: NetworkImage(
                    widget.product.image,
                  ),
                  fit: BoxFit.cover,
                ),
                color: Colors.grey.withOpacity(0.2)),
          ),
          const SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              widget.product.title,
              style: const TextStyle(fontSize: 20),
              maxLines: 2,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 2),
            width: m_w(context) * 0.46,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.all(4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.product.price.toString(),
                        style: const TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.red,
                            fontWeight: FontWeight.w200,
                            fontSize: 14),
                      ),
                      Text(
                        widget.product.price.toString(),
                        style: const TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(4),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.withOpacity(0.5)),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Icon(
                    Icons.add_shopping_cart_outlined,
                    color: Colors.blue.withOpacity(0.8),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

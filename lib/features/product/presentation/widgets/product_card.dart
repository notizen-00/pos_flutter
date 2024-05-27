import 'package:blog_app/core/utils/format_rupiah.dart';
import 'package:blog_app/features/product/domain/entities/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final Color color;
  final double height;
  
  const ProductCard({
    super.key,
    required this.product,
    required this.color,
    required this.height
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(context, BlogViewerPage.route(blog));
      },
      child: Container(
        height: 10,
        margin: const EdgeInsets.all(10).copyWith(
          bottom: 10,
        ),
        padding: EdgeInsets.all(height),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  product.nama,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14,
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                 Text(
              formatRupiah(int.parse(product.harga)), // Use the helper function here
              style: const TextStyle(
                fontSize: 10,
                color:Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
              ],
            ),
           
          ],
        ),
      ),
    );
  }
}


import 'package:blog_app/core/config/config.dart';
import 'package:blog_app/core/utils/format_rupiah.dart';
import 'package:blog_app/features/product/domain/entities/product.dart';
import 'package:flutter/material.dart';


class ProductCard extends StatelessWidget {
  final Product product;
  final Color color;

  
  const ProductCard({
    super.key,
    required this.product,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final String imageApiUrl = product.foto != ''  ? Config.assetUrl + product.foto : 'https://via.placeholder.com/300?text=${product.nama}';
    return GestureDetector(
      onTap: () {
        // Navigator.push(context, BlogViewerPage.route(blog));
      },
      child: Container(
        height: 10,
        margin: const EdgeInsets.all(4).copyWith(
          bottom: 1,
        ),
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child:
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    imageApiUrl,
                    width: double.infinity,
                    height: double.infinity,
                    fit:BoxFit.cover
                ),
              ),
              Positioned.fill(
                top:100,
                child:Container(
              padding:const EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:Colors.black.withOpacity(0.6)
              ),
              
              child:Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
            
            Column(
              mainAxisSize: MainAxisSize.max,
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
                formatRupiah(int.parse(product.harga)), 
                  style: const TextStyle(
                  fontSize: 10,
                  color:Colors.white70,
                  fontWeight: FontWeight.bold,
                ),
            ),
              ],
            ),
          ],
          ),
              )
              
              
              ),
              product.favorit == 1 ?
              Positioned(
              top:0,
              right:0,
              child:IconButton(
                icon:const Icon(
                    Icons.star,
                    color:Colors.amber
                ),
                onPressed: () {

                }, 
              )
              
            )
            :
            Positioned(
              top:0,
              right:0,
              child:IconButton(
                icon:const Icon(
                    Icons.star,
                    color:Colors.white
                ),
                onPressed: () {

                }, 
              )
              
            )

            ],
          )
      ),
    );
  }
}


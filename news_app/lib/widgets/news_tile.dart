import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class Newstile extends StatelessWidget {
  final ArticleModel articlemodel;

  const Newstile({super.key, required this.articlemodel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: articlemodel.image != null
              ? Image.network(
                  articlemodel.image!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.grey.shade200,
                      child: Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      ),
                    );
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.grey.shade200,
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.broken_image,
                        size: 64,
                        color: Colors.grey.shade600,
                      ),
                    );
                  },
                )
              : Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.grey.shade200,
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.image_not_supported,
                    size: 64,
                    color: Colors.grey.shade600,
                  ),
                ),
        ),
        SizedBox(height: 12),
        Text(
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          articlemodel.title,
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        SizedBox(height: 12),
        Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          articlemodel.subtitle ?? '',
          style: TextStyle(color: Colors.grey, fontSize: 10),
        ),
      ],
    );
  }
}

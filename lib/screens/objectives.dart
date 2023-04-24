import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/star_rating_provider.dart';

class ObjectivesScreen extends StatelessWidget {
  static const routeName = '/objectives-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(
              18,
              (index) => ChangeNotifierProvider<StarRatingProvider>(
                create: (_) => StarRatingProvider(),
                child: Column(
                  children: [
                    Text(
                      'Rate your experience ${index + 1}',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Consumer<StarRatingProvider>(
                      builder: (_, starCurrentCollor, child) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () =>
                                starCurrentCollor.setRating(1),
                            child: Icon(
                              starCurrentCollor.rating >= 1
                                  ? Icons.star
                                  : Icons.star_border,
                              color: starCurrentCollor.rating >= 1
                                  ? Colors.yellow
                                  : null,
                            ),
                          ),
                          GestureDetector(
                            onTap: () =>
                                starCurrentCollor.setRating(2),
                            child: Icon(
                              starCurrentCollor.rating >= 2
                                  ? Icons.star
                                  : Icons.star_border,
                              color: starCurrentCollor.rating >= 2
                                  ? Colors.yellow
                                  : null,
                            ),
                          ),
                          GestureDetector(
                            onTap: () =>
                                starCurrentCollor.setRating(3),
                            child: Icon(
                              starCurrentCollor.rating >= 3
                                  ? Icons.star
                                  : Icons.star_border,
                              color: starCurrentCollor.rating >= 3
                                  ? Colors.yellow
                                  : null,
                            ),
                          ),
                          GestureDetector(
                            onTap: () =>
                                starCurrentCollor.setRating(4),
                            child: Icon(
                              starCurrentCollor.rating >= 4
                                  ? Icons.star
                                  : Icons.star_border,
                              color: starCurrentCollor.rating >= 4
                                  ? Colors.yellow
                                  : null,
                            ),
                          ),
                          GestureDetector(
                            onTap: () =>
                                starCurrentCollor.setRating(5),
                            child: Icon(
                              starCurrentCollor.rating >= 5
                                  ? Icons.star
                                  : Icons.star_border,
                              color: starCurrentCollor.rating >= 5
                                  ? Colors.yellow
                                  : null,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

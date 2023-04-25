import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/star_rating_provider.dart';

class ObjectivesScreen extends StatelessWidget {
  static const routeName = '/objectives-screen';

  final List<String> experienceTexts = [    'Experience 1',    'Experience 2',    'Experience 3',    'Experience 4',    'Experience 5',    'Experience 6',    'Experience 7',    'Experience 8',    'Experience 9',    'Experience 10',    'Experience 11',    'Experience 12',    'Experience 13',    'Experience 14',    'Experience 15',    'Experience 16',    'Experience 17',    'Experience 18',  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' this is objectives screen',),
        elevation: 0,
        
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30), ),
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          child: Column(
            children: List.generate(
              18,
              (index) => ChangeNotifierProvider<StarRatingProvider>(
                create: (_) => StarRatingProvider(),
                child: Column(
                  children: [
                    Text(
                      experienceTexts[index],
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Consumer<StarRatingProvider>(
                      builder: (_, starCurrentCollor, child) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () => starCurrentCollor.setRating(1),
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
                            onTap: () => starCurrentCollor.setRating(2),
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
                            onTap: () => starCurrentCollor.setRating(3),
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
                            onTap: () => starCurrentCollor.setRating(4),
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
                            onTap: () => starCurrentCollor.setRating(5),
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

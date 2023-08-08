import 'package:flutter/material.dart';
import '/widgets/custom_bottom_navigation_bar.dart';
import 'package:provider/provider.dart';
import '../providers/star_rating_provider.dart';
import 'three_six_year_goal_screen.dart';

// Review this code untill it becomes crystal clear !!!

class ObjectivesScreen extends StatelessWidget {
  static const routeName = '/objectives-screen';

  final List<String> experienceTexts = [
    '1. Ambiente físico: Casa',
    '2. Ambiente físico: Carro ',
    '3. Ambiente físico: Trabalho',
    '4. Saúde física',
    '5. Saúde emocional',
    '6. Bem Estar',
    '7. Carreira/ Ocupação profissional',
    '8. Desenvolvimento pessoal',
    '9. Relacionamento amoroso',
    '10. Relacionamento amigos',
    '11. Relacionamento mãe',
    '12. Relacionamentos pai',
    '13. Relacionamento _________',
    '14. Espiritualidade(propósito de vida)',
    '15. Finanças',
    '16. Divertimento & Lazer',
  ];

  ObjectivesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              const Text(
                '1º STEP: Fazer um diagnóstico da situação real em cada área da vida.De 0 a 10 identificar em ponto está:',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/arrowGold.jpg',
                      height: 100,
                      width: 100,
                    ),
                    ...List.generate(
                      experienceTexts.length,
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
                                      starCurrentCollor.rating >= 1 ? Icons.star : Icons.star_border,
                                      color: starCurrentCollor.rating >= 1 ? Colors.yellow : null,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => starCurrentCollor.setRating(2),
                                    child: Icon(
                                      starCurrentCollor.rating >= 2 ? Icons.star : Icons.star_border,
                                      color: starCurrentCollor.rating >= 2 ? Colors.yellow : null,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => starCurrentCollor.setRating(3),
                                    child: Icon(
                                      starCurrentCollor.rating >= 3 ? Icons.star : Icons.star_border,
                                      color: starCurrentCollor.rating >= 3 ? Colors.yellow : null,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => starCurrentCollor.setRating(4),
                                    child: Icon(
                                      starCurrentCollor.rating >= 4 ? Icons.star : Icons.star_border,
                                      color: starCurrentCollor.rating >= 4 ? Colors.yellow : null,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => starCurrentCollor.setRating(5),
                                    child: Icon(
                                      starCurrentCollor.rating >= 5 ? Icons.star : Icons.star_border,
                                      color: starCurrentCollor.rating >= 5 ? Colors.yellow : null,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, ThreeSixYearGoalScreen.routName);
                        },
                        icon: const Icon(
                          Icons.arrow_forward,
                          size: 50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }
}

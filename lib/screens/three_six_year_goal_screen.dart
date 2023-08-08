import 'package:flutter/material.dart';
import 'package:patricia_app/global_app_colors.dart';
import '/widgets/custom_bottom_navigation_bar.dart';

// in this code I could not connect the divider lines to the borders from inside. 
// why global scaffoldBackgroundCollor does not affect this page?

class ThreeSixYearGoalScreen extends StatelessWidget {
  static const routName = '/three-six-year-goal-screen';

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
  ThreeSixYearGoalScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor:GlobalAppColors.mainBackgroundColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(30),
                  //margin: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                  ),
                  child: const Text(
                      '2º STEP: Definir os objetivos a evoluir a 3 meses, 6 meses ou 1 ano e escolher status desejado'),
                ),
                const SizedBox(height: 10,),
                ...List.generate(
                  experienceTexts.length,
                  (index) => Padding(
                    padding:const  EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          experienceTexts[index],
                          style: const TextStyle(fontWeight: FontWeight.w900),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Agora', style: TextStyle(fontWeight: FontWeight.w900),),  
                            SizedBox(width: 6,),
                            Text(' Stars Chosen')  // chosen stars from previouse  page
                          ],
                        ),
                       const  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Status desejado', style: TextStyle(fontWeight: FontWeight.w900),),
                            SizedBox(width: 6,),
                            Text ('Starts to choose')

                          ],
                        ), // our goal of stars
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           const Text(
                              'Período',
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
                            ),
                            SizedBox(width: 9,),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(90),
                                  color:GlobalAppColors.buttonSignInBackgroundCollor),
                               padding:const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                              child: Row(
                                
                                children: [
                                  GestureDetector(
                                      onTap: () {},
                                      child: const Text(
                                        '3 m',
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),),
                                  Container(color: Colors.black, width: 1, height: 30, margin:const EdgeInsets.symmetric(horizontal: 3),),
                                  GestureDetector(
                                    onTap: () {},
                                    child:const Text(
                                      '6 m',
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                 Container(color: Colors.black, width: 1, height: 30, margin:const EdgeInsets.symmetric(horizontal: 3),),
                                  GestureDetector(
                                    onTap: () {},
                                    child:const Text(
                                      '1 y',
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar:const  CustomBottomNavigationBar(),
        ),
      ),
    );
  }
}

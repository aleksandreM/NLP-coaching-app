import 'package:flutter/material.dart';
import '/widgets/custom_bottom_navigation_bar.dart';

class LightBulbVideosScreen extends StatelessWidget {
  const LightBulbVideosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                ),
              ),
              const ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
                  child: ColoredBox(color: Colors.white)),
              const SizedBox(
                height: 15,
              ),
              CustomStack(
                  imageAddress: 'assets/images/workshop_despertar _da_consciência.jpg',
                  videoText: 'Despertar da\n consciencia'),
              const SizedBox(
                height: 20,
              ),
              CustomStack(
                  imageAddress: 'assets/images/workshop_dimensões_do_EU.jpg',
                  videoText: 'As dimensoes du EU'),
              const SizedBox(
                height: 20,
              ),
              CustomStack(
                  videoText: 'Despertar da\n consciencia',
                  imageAddress: 'assets/images/workshop_eleva_o_teu_poder_pessoal.jpg'),
              const SizedBox(
                height: 20,
              ),
              CustomStack(
                  imageAddress: 'assets/images/workshop_relacionamentos.jpg',
                  videoText: 'Relaciamentos'),
            ],
          ),
        ),
      bottomNavigationBar: CustomBottomNavigationBar(),),
    );
  }
}

class CustomStack extends StatelessWidget {
  CustomStack({required this.imageAddress, required this.videoText});

  final String imageAddress;
  final String videoText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          
          height: 150,
          
          child: Image.asset(imageAddress),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
            child: Container(
              color: Colors.white,
              height: 150,
              width: 150,
              child: Center(child: Text(videoText)),
            ),
          ),
        ),
      ],
    );
  }
}

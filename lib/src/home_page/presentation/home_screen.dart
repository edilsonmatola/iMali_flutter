import 'package:flutter/material.dart';
import 'package:imali_flutter/src/constants/constants.dart';
import 'package:imali_flutter/src/home_page/models/service_model.dart';
import 'package:imali_flutter/src/home_page/widgets/balance_card.dart';
import 'package:imali_flutter/src/home_page/widgets/custom_bottom_navigationbar.dart';
import 'package:imali_flutter/src/home_page/widgets/primary_button.dart';
import 'package:imali_flutter/src/home_page/widgets/services_cards.dart';

import '../data/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
    this.serviceModel,
  }) : super(key: key);

  final ServiceModel? serviceModel;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Olá, João',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications,
                    ),
                  ),
                ],
              ),
            ),
            // * Balance Card
            const BalanceCard(),
            const SizedBox(
              height: 16,
            ),
            // * Botoes de serviços
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  // * Send Money Button
                  PrimaryButton(
                    text: 'Enviar',
                    imageIcon: AppAssets.sendMoneyIcon,
                    buttonColor: Color.fromRGBO(179, 250, 184, 1),
                  ),
                  // * Receive Money Button
                  PrimaryButton(
                    buttonColor: Color.fromRGBO(255, 203, 102, 1),
                    text: 'Receber',
                    imageIcon: AppAssets.receiveMoneyIcon,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Serviços',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                physics: const BouncingScrollPhysics(),
                crossAxisCount: 2,
                children: List.generate(
                  listaServicos.length,
                  (index) {
                    final servicesIcon = listaServicos[index].imageIcon;
                    final servicesDescription =
                        listaServicos[index].description;
                    return ServicesCards(
                      onPressed: () {
                        if (index == 2) {
                          Navigator.pushNamed(
                            context,
                            '/tv',
                          );
                        }
                      },
                      icon: servicesIcon,
                      description: servicesDescription,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

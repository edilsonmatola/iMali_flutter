import 'package:flutter/material.dart';
import 'package:imali_flutter/src/constants/constants.dart';
import 'package:imali_flutter/src/tv_page/data/data.dart';
import 'package:imali_flutter/src/tv_page/widgets/tv_card.dart';

class TvPage extends StatelessWidget {
  const TvPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'i.Mali Tv',
        ),
        backgroundColor: AppColors.corPrimaria,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: listaTv.length,
          itemBuilder: (context, index) {
            final tvLogo = listaTv[index].image;
            final tvTitle = listaTv[index].title;

            return TvCard(
              logo: tvLogo,
              title: tvTitle,
            );
          },
        ),
      ),
    );
  }
}

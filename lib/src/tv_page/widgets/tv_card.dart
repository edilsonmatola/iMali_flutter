import 'package:flutter/material.dart';

class TvCard extends StatelessWidget {
  const TvCard({
    Key? key,
    this.onPressed,
    required this.logo,
    required this.title,
  }) : super(key: key);

  final Function()? onPressed;
  final String logo;
  final String title;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            width: deviceWidth * 0.9,
            height: deviceHeight * 0.40,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.30),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Material(
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.white,
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  overlayColor: MaterialStateProperty.all(
                    Colors.grey.shade400,
                  ),
                  onTap: () => onPressed,
                  child: Image(
                    image: AssetImage(
                      logo,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

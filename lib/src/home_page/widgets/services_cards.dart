import 'package:flutter/material.dart';

class ServicesCards extends StatelessWidget {
  const ServicesCards({
    Key? key,
    required this.icon,
    required this.description,
    required this.onPressed,
  }) : super(key: key);

  final String icon;
  final String description;
  final Function() onPressed;

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
            width: deviceWidth * 0.8,
            height: deviceHeight * 0.2,
            child: Container(
              width: 50,
              height: 50,
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
                color: Colors.white70,
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  overlayColor: MaterialStateProperty.all(
                    Colors.grey.shade400,
                  ),
                  onTap: () => onPressed(),
                  child: Image(
                    image: AssetImage(
                      icon,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            description,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

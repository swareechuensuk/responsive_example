import 'package:flutter/material.dart';
import 'package:responsive_example/style_utils/card_style.dart';

class SearchBarWithQR extends StatelessWidget {
  const SearchBarWithQR({
    super.key,
  });

  // TOSHOW: try to remove 1. AspectRatio 2. IntrinsicHeight and see the difference
  // TOSHOW: try to add longer text instead of 'Search' and see what happens
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: cardStyle(),
              child: Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(right: 16),
                      decoration: const BoxDecoration(
                          color: Colors.pink, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.search,
                        size: 16,
                        color: Colors.white,
                      )),
                  const Expanded(child: Text('Search'))
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: cardStyle(),
              // child: const Icon(
              //   Icons.qr_code_scanner,
              // ),
            ),
          )
        ],
      ),
    );
  }
}

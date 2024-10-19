import 'package:craftyfurniture/screens/shared_utils/extension.dart';
import 'package:flutter/material.dart';

class PopularView extends StatefulWidget {
  const PopularView({super.key});

  @override
  State<PopularView> createState() => _PopularState();
}

class _PopularState extends State<PopularView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Popular',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Spacer(),
              Text(
                'View All',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.orangeAccent,
                ),
              ),
            ],
          ),
          20.vSpace,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 250,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Row(
                      children: [
                        Container(
                          width: 72,
                          height: 72,
                          decoration: BoxDecoration(
                            color: Colors.grey[350],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'Sofa3'.toPNG(),
                              width: 60,
                              height: 80,
                            ),
                          ),
                        ),
                        10.hSpace,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Swoon Lounge',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Regal Do Lobo',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                            Spacer(),
                            Text(
                              '\$136.79',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.orangeAccent,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                20.hSpace,
                Container(
                  width: 250,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Row(
                      children: [
                        Container(
                          width: 72,
                          height: 72,
                          decoration: BoxDecoration(
                            color: Colors.grey[350],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'Sofa4'.toPNG(),
                              width: 60,
                              height: 80,
                            ),
                          ),
                        ),
                        10.hSpace,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tucho Armchair',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Hatil-Loren',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                            Spacer(),
                            Text(
                              '\$148.65',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.orangeAccent,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

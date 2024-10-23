import 'package:craftyfurniture/screens/shared_utils/extension.dart';
import 'package:craftyfurniture/screens/shared_utils/input_field.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class TopBarView extends StatefulWidget {
  const TopBarView({super.key});

  @override
  State<TopBarView> createState() => _TopBarViewState();
}

class _TopBarViewState extends State<TopBarView> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
                child: const Icon(
                  Icons.person,
                  size: 50,
                ),
              ),
              10.hSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome,',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  5.vSpace,
                  const Text(
                    'Besnik Doe',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: const Icon(
                  Icons.notifications_on_sharp,
                  size: 40,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          30.vSpace,
          InputField(
            textEditingController: _searchController,
            hint: 'Search Furniture',
            hintcolor: Colors.grey,
            prefixWidget: const Icon(
              EvaIcons.search,
              size: 30,
              color: Colors.grey,
            ),
            suffixWidget: const Icon(
              EvaIcons.options2,
              size: 30,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

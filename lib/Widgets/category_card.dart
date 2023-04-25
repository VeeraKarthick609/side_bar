import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:p1/Controllers/controller.dart';

class CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  CategoryCard({super.key, required this.imageUrl, required this.name});
  final Controller _c = Controller();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: () {
          _c.active.value = "";
          _c.active.value = name;
        },
        child: Container(
          padding: const EdgeInsets.only(right: 6),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 4.5,
                decoration: BoxDecoration(
                    color: _c.active.value == name
                        ? Colors.blue.withOpacity(0.5)
                        : null,
                    borderRadius: _c.active.value == name
                        ? const BorderRadius.only(
                            topRight: Radius.circular(36),
                            bottomRight: Radius.circular(36))
                        : null),
                child: Center(
                  child: SizedBox(
                    height: 60,
                    width: 60,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36),
                          border: Border.all(
                              color: _c.active.value == name
                                  ? Colors.blue.withOpacity(0.02)
                                  : Colors.blue.withOpacity(0.2),
                              width: 7)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(36),
                        child: Image.network(
                          imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(name)
            ],
          ),
        ),
      ),
    );
  }
}

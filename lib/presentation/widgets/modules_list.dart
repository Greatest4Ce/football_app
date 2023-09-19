import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:football_app/domain/entity/module/module.dart';
import 'package:football_app/domain/entity/module_list/module_list.dart';

class ModulesList extends StatelessWidget {
  const ModulesList({required this.data, super.key});
  final ModuleList data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: data.modules
            .map<Widget>(
              (Module item) => Container(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Column(
                  children: [
                    Text(item.id.toString()),
                    SizedBox(
                      height: 330,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: item.stories.length,
                        itemBuilder: (BuildContext context, int index) =>
                            Container(
                          width: 200,
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.red),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              Image.network(
                                item.stories[index].imageURL.toString(),
                                height: 100,
                                width: 100,
                              ),
                              Text(
                                item.stories[index].autoGeneratedSummary
                                    .toString(),
                                overflow: TextOverflow.fade,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:football_app/domain/entity/module/module.dart';
import 'package:football_app/domain/entity/module_list/module_list.dart';
import 'package:football_app/presentation/common/custom_listtile.dart';

class ModulesList extends StatelessWidget {
  const ModulesList({required this.modulesList, super.key});
  final ModuleList modulesList;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: modulesList.modules
            .map<Widget>(
              (Module item) => item.stories.isEmpty
                  ? Container()
                  : Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(item.id),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 330,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: item.stories.length,
                            itemBuilder: (BuildContext context, int index) =>
                                CustomListTile(
                              data: item.stories[index],
                            ),
                          ),
                        ),
                      ],
                    ),
            )
            .toList(),
      ),
    );
  }
}

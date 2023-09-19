import 'package:flutter/material.dart';
import 'package:football_app/domain/entity/module/module.dart';
import 'package:football_app/domain/entity/module_list/module_list.dart';
import 'package:football_app/domain/entity/story/story.dart';
import 'package:football_app/presentation/common/custom_listtile.dart';

class ModulesListNew extends StatefulWidget {
  const ModulesListNew({required this.moduleList, super.key});
  final ModuleList moduleList;

  @override
  State<ModulesListNew> createState() => _ModulesListNewState();
}

class _ModulesListNewState extends State<ModulesListNew> {
  List<Map<String, Object>> isExpandeds = [];
  @override
  void initState() {
    for (final module in widget.moduleList.modules) {
      isExpandeds.add({'id': module.id, 'isExpanded': module.isExpanded});
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList(
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            isExpandeds[index]['isExpanded'] = !isExpanded;
          });
        },
        children:
            widget.moduleList.modules.map<ExpansionPanel>((Module module) {
          if (module.stories.isEmpty) {
            return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) =>
                  ListTile(
                title: Text(module.id),
              ),
              body: const SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    'No news',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              isExpanded: isExpandeds[isExpandeds.indexWhere(
                (element) => element['id'] == module.id,
              )]['isExpanded'] as bool,
            );
          } else {
            return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) =>
                  ListTile(
                title: Text(module.id),
              ),
              body: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: module.stories
                      .map<Widget>(
                        (Story story) => CustomListTile(data: story),
                      )
                      .toList(),
                ),
              ),
              isExpanded: isExpandeds[isExpandeds.indexWhere(
                (element) => element['id'] == module.id,
              )]['isExpanded'] as bool,
            );
          }
        }).toList(),
      ),
    );
  }
}

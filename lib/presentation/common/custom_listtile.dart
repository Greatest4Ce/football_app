import 'package:flutter/material.dart';
import 'package:football_app/domain/entity/story/story.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({required this.data, super.key});
  final Story data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          if (data.imageURL != null)
            Image.network(
              data.imageURL!,
              height: 200,
              width: 300,
              fit: BoxFit.contain,
            )
          else
            const Text('No photo'),
          Text(
            data.autoGeneratedSummary,
            maxLines: 5,
            overflow: TextOverflow.fade,
          ),
        ],
      ),
    );
  }
}

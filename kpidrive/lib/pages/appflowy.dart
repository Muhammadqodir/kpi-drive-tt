import 'package:flutter/material.dart';

import 'package:appflowy_board/appflowy_board.dart';

class MultiBoardListExample extends StatefulWidget {
  const MultiBoardListExample({Key? key}) : super(key: key);

  @override
  State<MultiBoardListExample> createState() => _MultiBoardListExampleState();
}

class _MultiBoardListExampleState extends State<MultiBoardListExample> {
  final AppFlowyBoardController controller = AppFlowyBoardController(
    onMoveGroup: (fromGroupId, fromIndex, toGroupId, toIndex) {
      debugPrint('Move item from $fromIndex to $toIndex');
    },
    onMoveGroupItem: (groupId, fromIndex, toIndex) {
      debugPrint('Move $groupId:$fromIndex to $groupId:$toIndex');
    },
    onMoveGroupItemToGroup: (fromGroupId, fromIndex, toGroupId, toIndex) {
      debugPrint('Move $fromGroupId:$fromIndex to $toGroupId:$toIndex');
    },
  );

  @override
  void initState() {
    super.initState();
    final group1 = AppFlowyGroupData(
      id: "To Do",
      name: "To Do",
      items: [
        TextItem("Card 1"),
        TextItem("Card 2"),
        TextItem("Card 4"),
        TextItem("Card 5"),
      ],
    );

    final group2 = AppFlowyGroupData(
      id: "In Progress",
      name: "In Progress",
      items: <AppFlowyGroupItem>[
        TextItem("Card 6"),
      ],
    );

    final group3 = AppFlowyGroupData(
      id: "Pending",
      name: "Pending",
      items: <AppFlowyGroupItem>[
        TextItem("Card 9"),
        TextItem("Card 11"),
        TextItem("Card 12"),
      ],
    );
    final group4 = AppFlowyGroupData(
        id: "Canceled",
        name: "Canceled",
        items: <AppFlowyGroupItem>[
          TextItem("Card 13"),
          TextItem("Card 14"),
          TextItem("Card 15"),
        ]);
    final group5 = AppFlowyGroupData(
      id: "Urgent",
      name: "Urgent",
      items: <AppFlowyGroupItem>[
        TextItem("Card 14"),
        TextItem("Card 15"),
      ],
    );

    controller.addGroup(group1);
    controller.addGroup(group2);
    controller.addGroup(group3);
    controller.addGroup(group4);
    controller.addGroup(group5);
  }

  @override
  Widget build(BuildContext context) {
   
    return AppFlowyBoard(
      controller: controller,
      cardBuilder: (context, group, groupItem) {
        return AppFlowyGroupCard(
          key: ValueKey(groupItem),
          child: _buildCard(groupItem),
        );
      },
    );
  }

  Widget _buildCard(AppFlowyGroupItem item) {
    TextItem textItem = item as TextItem;
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Text(item.s),
      ),
    );
  }
}

class TextItem extends AppFlowyGroupItem {
  final String s;

  TextItem(this.s);

  @override
  String get id => s;
}

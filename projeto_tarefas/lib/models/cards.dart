import 'package:flutter/material.dart';
import 'package:projeto_tarefas/resources/colors.dart';
import 'package:projeto_tarefas/resources/strings.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    Key? key,
    required this.onItemDelete,
  }) : super(key: key);

  // ignore: prefer_typing_uninitialized_variables
  final VoidCallback onItemDelete;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
      width: 50.0,
      height: 120.0,
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 0.8, color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(Strings.taskA,
                  style: theme.textTheme.bodyText1
                      ?.copyWith(fontWeight: FontWeight.w800)),
              IconButton(
                splashRadius: 12.0,
                onPressed: onItemDelete,
                padding: EdgeInsets.zero,
                visualDensity: const VisualDensity(horizontal: -4),
                icon: const Icon(
                  Icons.close,
                  size: 18.0,
                  color: Cores.close,
                ),
              ),
            ],
          ),
          Text(Strings.explanation,
              style: theme.textTheme.bodyText2
                  ?.copyWith(fontWeight: FontWeight.w400)),
          const SizedBox(height: 10.0),
          Row(
            children: const [
              Icon(
                Icons.watch_later_outlined,
                color: Cores.close,
              ),
              Text('16/03/2022',
                  style: TextStyle(
                    color: Cores.close,
                  )),
            ],
          )
        ],
      ),
    );
  }
}

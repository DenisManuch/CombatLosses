import 'package:combat_losses/features/combat_losses/data/constants/size_constants.dart';
import 'package:flutter/material.dart';

///
class CardInfoWidget extends StatelessWidget {
  ///
  final String image;

  ///
  final int losesItemValue;

  ///
  final int losesItemChange;

  ///
  final String title;

  ///
  const CardInfoWidget({
    required this.image,
    required this.title,
    required this.losesItemValue,
    required this.losesItemChange,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(0, 0, 0, 0),
      elevation: 0,
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: SizedBox(
                  height: cardSizedBoxHeight,
                  width: cardSizedBoxWidth,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(image),
                  ),
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          losesItemValue.toString(),
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        if (losesItemChange == 0)
                          const SizedBox()
                        else
                          Text(
                            '(+${losesItemChange.toString()})',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      title,
                      overflow: TextOverflow.fade,
                      maxLines: 1,
                      softWrap: false,
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ],
                ),
              ),
            ],
          ),
          const Divider(
            height: 1,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

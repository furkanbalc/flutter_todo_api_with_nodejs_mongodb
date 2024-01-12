import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/feature/view_model/home_provider.dart';
import 'package:todo_app/product/constants/index.dart';
import 'package:todo_app/product/extensions/index.dart';

class TitleAndCounter extends StatelessWidget {
  const TitleAndCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final count = context.watch<HomeProvider>().todoItems?.length ?? 0;
    final completedCount = context.watch<HomeProvider>().completedCount;

    return Container(
      padding: context.paddings.allMedium,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.3),
        borderRadius: context.borders.borderRadiusMedium,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// App Title
              Text(AppStrings.appListTitle, style: context.textStyles.headlineSmall),
              Text(AppStrings.appListSubTitle, style: context.textStyles.titleMedium),
            ],
          ),

          /// Check Todo Counter
          Stack(
            alignment: Alignment.center,
            children: [
              Center(
                /// Check Todo Progress
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                  backgroundColor: Colors.white,
                  strokeWidth: 10,
                  value: (completedCount == 0 ? 0 : completedCount) / (count == 0 ? 1 : count),
                ),
              ),

              /// Check Todo Text
              Align(alignment: Alignment.centerRight, child: Text('$completedCount/$count')),
            ],
          )
        ],
      ),
    );
  }
}

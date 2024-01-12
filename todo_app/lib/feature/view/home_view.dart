import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/feature/model/todo_model.dart';
import 'package:todo_app/feature/view/add_view.dart';
import 'package:todo_app/feature/view/theme_view.dart';
import 'package:todo_app/feature/view_model/home_provider.dart';
import 'package:todo_app/feature/widgets/home_title_and_counter.dart';
import 'package:todo_app/feature/widgets/todo_card.dart';
import 'package:todo_app/product/constants/app_strings.dart';
import 'package:todo_app/product/enums/app_lotties.dart';
import 'package:todo_app/product/extensions/index.dart';
import 'package:todo_app/product/utility/mixin/navigate_manager.dart';
import 'package:todo_app/product/widgets/images/custom_centered_lottie.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with NavigatorManager {
  @override
  Widget build(BuildContext context) {
    final items = context.watch<HomeProvider>().todoItems;
    return Scaffold(
      resizeToAvoidBottomInset: false,

      /// AppBar
      appBar: AppBar(
        actions: [IconButton(onPressed: () => navigatePush(context, const ThemeView()), icon: const Icon(Icons.settings))],
      ),
      body: Padding(
        padding: context.paddings.allMedium,
        child: Column(
          children: [
            /// Title & Completed Todo Counter Circular Progress
            const TitleAndCounter(),
            Expanded(
              child: Padding(
                padding: context.paddings.onlyTopMedium,
                child: items == null

                    /// Loading Widget
                    ? const Center(child: CircularProgressIndicator())

                    /// To do List View
                    : items.isEmpty
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomCenteredLottie(lottie: AppLotties.sleeping.toLottie),
                              Text(AppStrings.emptyList,
                                  style: context.textStyles.titleLarge.copyWith(color: Theme.of(context).primaryColor))
                            ],
                          )
                        : _todoListView(items),
              ),
            ),
          ],
        ),
      ),

      /// To do Add Button
      floatingActionButton: _todoAddFab(context),
    );
  }

  Widget _todoAddFab(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => navigatePush(context, const AddView()),
      child: const Icon(Icons.add),
    );
  }

  Widget _todoListView(List<TodoModel> items) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: context.paddings.onlyBottomNormal,
          child: Column(
            children: [
              /// Delete Slidable
              Slidable(
                key: const ValueKey(0),
                endActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  children: [
                    SlidableAction(
                      backgroundColor: const Color(0xFFFE4A49),
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: AppStrings.delete,
                      onPressed: (context) async {
                        await context.read<HomeProvider>().deleteTodo(model: items[index]);
                      },
                    ),
                  ],
                ),

                /// To do Card Widget
                child: TodoCard(model: items[index]),
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/feature/model/todo_model.dart';
import 'package:todo_app/product/service/api_service.dart';

class HomeProvider extends ChangeNotifier {
  /// parameter
  final IApiService apiService;

  /// constructor
  HomeProvider(this.apiService) {
    init();
  }

  /// variables
  String title = '';
  String desc = '';
  String date = '';
  String hour = '';
  List<TodoModel>? todoItems;
  int completedCount = 0;
  DateTime dateTime = DateTime.now();
  bool isLoading = false;

  /// logics

  void _changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  /// ---------------------- fetchDatas & count completed todo ----------------------
  Future<void> init() async {
    _changeLoading();
    todoItems = (await apiService.getItems()) ?? [];
    for (var element in todoItems!) {
      if (element.isCompleted) {
        completedCount++;
        notifyListeners();
      }
    }
    sort();
    notifyListeners();
    _changeLoading();
  }

  /// ---------------------- todo list sort date & hour ----------------------
  void sort() {
    todoItems!.sort((a, b) {
      // Tarih sıralaması
      int dateComparison = a.date!.compareTo(b.date!);
      if (dateComparison != 0) {
        return dateComparison;
      }

      // Tarihler aynıysa saat sıralaması
      return a.hour!.compareTo(b.hour!);
    });
  }

  /// ---------------------- text field on changed logics ---------------------

  void setTitle(String value) {
    title = value;
    notifyListeners();
  }

  void setDesc(String value) {
    desc = value;
    notifyListeners();
  }

  void setIsCompleted(TodoModel model) {
    model.isCompleted = !model.isCompleted;
    model.isCompleted ? completedCount++ : completedCount--;
    notifyListeners();
    updateTodo(model: model);
  }

  void reset() {
    date = '';
    hour = '';
    dateTime = DateTime.now();
    notifyListeners();
  }

  Future<void> setDate(BuildContext context) async {
    final DateTime? picked = (await showDatePicker(
      context: context,
      initialDate: dateTime,
      firstDate: DateTime(DateTime.now().year),
      lastDate: DateTime(2101),
    ));
    if (picked != dateTime && picked != null) {
      dateTime = picked;
      date = DateFormat('dd/MM/yyyy').format(dateTime);
      notifyListeners();
    }
  }

  Future<void> setHour(BuildContext context) async {
    final TimeOfDay pickedTime = (await showTimePicker(context: context, initialTime: TimeOfDay.fromDateTime(dateTime)))!;
    dateTime = DateTime(dateTime.year, dateTime.month, dateTime.day, pickedTime.hour, pickedTime.minute);
    hour = DateFormat('H:mm').format(dateTime);
    notifyListeners();
  }

  /// ---------------------- api methods ----------------------

  Future<void> fetch() async {
    _changeLoading();
    todoItems = (await apiService.getItems()) ?? [];
    notifyListeners();
    _changeLoading();
  }

  Future<void> addTodo() async {
    await apiService.addItems(model: TodoModel(title: title, desc: desc, date: date, hour: hour)).then((value) => reset());
    fetch();
  }

  Future<void> updateTodo({required TodoModel model}) async {
    final result = await apiService.updateItem(model: model);
    result ? fetch() : null;
  }

  Future<void> deleteTodo({required TodoModel model}) async {
    await apiService.deleteItem(todoId: model.id!).then((value) => fetch());
  }
}

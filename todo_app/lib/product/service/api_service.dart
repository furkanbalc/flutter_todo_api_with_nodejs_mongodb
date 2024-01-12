import 'dart:io';

import 'package:dio/dio.dart';
import 'package:todo_app/feature/model/todo_model.dart';
import 'package:todo_app/product/service/config.dart';

abstract class IApiService {
  IApiService(this.dio);
  final Dio dio;
  Future<List<TodoModel>?> getItems();
  Future<bool> addItems({required TodoModel model});
  Future<bool> deleteItem({required String todoId});
  Future<bool> updateItem({required TodoModel model});
}

class ApiService extends IApiService {
  ApiService(super.dio);

  /// GET METHOD
  @override
  Future<List<TodoModel>?> getItems() async {
    final response = await dio.get(getTodos);

    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;
      if (jsonBody is List) {
        final List<TodoModel> todos = (response.data as List).map<TodoModel>((json) => TodoModel.fromJson(json)).toList();
        return todos;
      }
    }
    return null;
  }

  /// POST METHOD
  @override
  Future<bool> addItems({required TodoModel model}) async {
    try {
      final response = await dio.post(createTodo, data: model.toJson());
      if (response.statusCode == HttpStatus.created) {
        return true;
      } else {
        throw Exception("Failed to create user: ${response.statusCode}");
      }
    } catch (e) {
      return false;
    }
  }

  /// PUT METHOD
  @override
  Future<bool> updateItem({required TodoModel model}) async {
    try {
      final response = await dio.put('$updateTodo/${model.id}', data: model.toJson());

      if (response.statusCode == HttpStatus.ok) {
        return true;
      } else {
        throw Exception("Failed to create user: ${response.statusCode}");
      }
    } catch (e) {
      return false;
    }
  }

  /// DELETE METHOD
  @override
  Future<bool> deleteItem({required String todoId}) async {
    try {
      final response = await dio.delete('$deleteTodo/$todoId');
      if (response.statusCode == HttpStatus.noContent) {
        return true;
      } else {
        throw Exception("Failed to delete todo: ${response.statusCode}");
      }
    } catch (e) {
      return false;
    }
  }
}

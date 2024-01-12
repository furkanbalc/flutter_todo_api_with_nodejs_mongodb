const TodoModel = require('../models/todo.model');

class TodoService {
  /// POST
  static async createTodo(title, desc, date, hour, isCompleted) {
    const createTodo = new TodoModel({ title, desc, date, hour, isCompleted });
    return await createTodo.save();
  }

  /// GET
  static async getTodos() {
    const todoList = await TodoModel.find({});
    return todoList;
  }

  /// DELETE
  static async deleteTodo(id) {
    const deleted = await TodoModel.findByIdAndRemove(id);
    return deleted;
  }
  /// PUT
  static async updateTodo(id, title, desc, date, hour, isCompleted) {
    const updated = await TodoModel.findByIdAndUpdate(id, { title, desc, date, hour, isCompleted }, { new: true });
    return updated;
  }
}

module.exports = TodoService;
const router = require('express').Router();
const TodoController = require('../controllers/todo.controller');

/// POST ENDPOİNT
router.post('/createTodo',TodoController.createTodo);
/// GET ENDPOİNT
router.get('/getTodos',TodoController.getTodos);
/// DELETE ENDPOİNT
router.delete('/deleteTodo/:id',TodoController.deleteTodo);
/// PUT ENDPOİNT
router.put('/updateTodo/:id',TodoController.updateTodo);
module.exports = router;
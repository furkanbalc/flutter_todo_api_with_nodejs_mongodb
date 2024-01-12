const app = require('./app');
const port = 3000;

app.get('/',(req,res) => {
    res.send('Demo Todo App')
})
app.listen(port, () => {
    console.log('Server listening on Port http://localhost:3000');
})
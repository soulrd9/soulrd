const http=require('http'),
      path=require('path'),
      Routing=require('./rutas.js'),
      express=require('express'),
      bodyParser=require('body-parser'),
      mongoose=require('mongoose');


const PORT=8082;
const app=express()
const server=http.createServer(app)


app.use(bodyParser.json())
app.use(bodyParser.urlencoded({extended:true}))
app.use(express.static('client'))

app.use('/users',Routing)
app.use('/events',Routing)

Server.listen(PORT,function(){
     console.log('Server is listening on port:'+PORT);
})
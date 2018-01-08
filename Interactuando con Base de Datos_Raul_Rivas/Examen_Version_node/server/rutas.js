const Router= require('express').Router();

//traer de la coleccion todos los eventos guardados
Router.get('/events/all',function(req,res){
Events.find({}).exec(function(err,docs){
	if(err){
		res.status(500)
		res.json(err)
	}
	res.json(docs)
})
})

//guardar un nuevo usuario
Router.get('/users/new',function(req,res){
let user=new Users({
	nombre:req.body.nombre,
	correo:req.body.correo,
	fecha_nacimiento:req.body.fecha_nacimiento,
	contrasena:req.body.password,
})

user.save(function(error){
	if(error){
		res.status(500)
		res.json(error)
	}
	res.send("Nuevo usuario guardado")
})
})


//buscar a un usuario por su correo y contrasena
Router.get('/login',function(req,res){
let nombre=req.body.nombre
let pass=req.body.pass

Users.findOne({nombre:nombre},{pass:pass}).exec(function(err,doc)){
	if(err){
       res.send("Invalido")		
	}
	res.send("Validado")

}


})




//crear un evento nuevo en la coleccion
Router.get('events/new',function(req,res){
let event=new Event({
	eventId:Math.floor(Math.random()*500),
	title:req.body.title,
	start:req.body.start,
	end:req.body.end
	

event.save(function(error){
	if(error){
		res.status(500)
		res.json(error)
	}
	res.send("evento guardado")
})
})


//borrar un evento de la coleccion
Router.get('events/delete/:id',function(req,res){

try{
event.deleteOne({id:id})
res.send("Evento borrado con exito")
}catch(e){
res.send("Error al intentar borrar el evento")
}

})




module.exports=Router
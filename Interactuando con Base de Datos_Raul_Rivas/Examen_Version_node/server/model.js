const mongoose = require('mongoose')
const Schema = mongoose.Schema

	let UserSchema = new Schema({
		correo:{ type: String, require: true, unique:true },
		nombre_completo:{ type: String, require: true },
		contrasena:{ type: String, require: true },
		fecha_nacimiento:{ type: Date, require: true }
	})
	
	let UserModel = mongoose.model('Usuario', UserSchema)
	module.exports = UserSchema 



let EventSchema= new Schema({
	id:{type:Number,require:true,unique:true},
	titulo:{type:String,require:true},
	fecha_inicio:{type:Date,require:true},
	fecha_fin:{type:Date,require:true},
	dia_completo:{ type: String, require: true, enum: ['Si', 'No'] }
})




let EventModel=mongoose.model("Evento",EventSchema)
module.exports=EventSchema


	mongoose.connect('mongodb://localhost/c7')



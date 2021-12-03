const { Schema, model } = require('mongoose');
const encuestaSchema = new Schema({
    titulo: String,
    descripcion: String,
    estado: Number,
    fecha_ini: Date,
    fecha_fin: Date,
        Secciones: [{
            titulo: String,
            descripcion: String,
        TipoPregunta: [{
            nombre: String,
        pregunta: [{
            titulo: String,
        respuesta: [{
            trespuesta: String,
            }],
          }],
        }],
    }],
})

module.exports = model('Encuesta', encuestaSchema);
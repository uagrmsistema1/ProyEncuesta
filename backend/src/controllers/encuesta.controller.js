const encuestaService = require('../services/encuesta.service');

const agregarencuestas = async (req, res) => {
    console.log(req.body);
    res.json({
       encuesta: await encuestaService.guardarencuesta(req.body)

    })

}

const consultarencuestas = async(req, res) => {
    res.json({
        encuestas: await encuestaService.consultarencuestas()
    })
}

module.exports = {consultarencuestas, agregarencuestas};
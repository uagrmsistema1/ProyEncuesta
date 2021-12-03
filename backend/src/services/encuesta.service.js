const encuestamodel = require('../models/encuesta.model')

class EncuestaService {
    EncuestaService() {}

    async consultarencuestas() {
        try {

            return await encuestamodel.find();
        } catch (error) {
            return error;

        }
    }

    async guardarencuesta(encuesta = new encuestamodel()) {
        try {
            var encuestaGuardada;
            await encuestamodel.create(encuesta).then( (value) => {
                encuestaGuardada =  value;
            });

            return encuestaGuardada;

        } catch (error) {
            console.log(error);

        }
    }

}

module.exports = new EncuestaService();
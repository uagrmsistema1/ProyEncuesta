const { Router } = require('express');
const { consultarencuestas, agregarencuestas} = require('../controllers/encuesta.controller')
const router = Router();

router.get('/api/encuestas', consultarencuestas);
router.post('/api/encuestas/registro', agregarencuestas);

module.exports = router;
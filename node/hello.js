var http = require("http");

var manejador = function(req, res) {
     console.log("Hola mundo");
     res.end("aqui andamos al 100");
};

var servidor = http.createServer(manejador);

servidor.listen(8080);
var mysql = require('mysql');

var connection = mysql.createConnection({
    host : 'localhost',
    user : 'sandra',
    password : 'contramely22',
    database : 'gama_consult'
});

connection.connect( function(err) {
    if(err){
        console.log('ERROR CONNECTION: '+ err.stack);
        return;
    }
    console.log('CONNECTED AS ID '+ connection.threadId);
});

var sql ="SELECT SustanciaActiva FROM Medicamentos WHERE MedicamentoID=1;";
connection.query(sql, function (error, results, fields) {
    if(error) throw error;
    console.log('The solution is:', results[0].SustanciaActiva);
});

connection.end();
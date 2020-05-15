const http = require("http");
const mariadb = require('mariadb');



const pool = mariadb.createPool({
    host: 'localhost',
    user: 'sandra',
    password: 'contramely22',
    database: 'gama_consult',
    connectionLimit: 5
});

var aver="init";
var rows;

var sql ="SELECT SustanciaActiva FROM Medicamentos WHERE MedicamentoID=1;";
async function asyncFunction(){
    let conn;
    try {
        conn = await pool.getConnection();

        rows = await conn.query(sql);
        console.log('ROW', rows[0].SustanciaActiva);
        aver += "tod cool";
    } catch(err) {
        aver += "ohoh";
        throw err;
    } finally {
        aver += "finally"
        if(conn){
            aver += "conn";
            conn.release();
        }
    }
}

asyncFunction();
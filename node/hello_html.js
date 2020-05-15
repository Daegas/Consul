var http = require("http");
var fs = require("fs");

var html = fs.readFile("./index.html", function(err, html) {
    
});

http.createServer(function(req, res) {
    var html = fs.readFile("./index.html", function(err, html) {
        res.write(html);
        res.end(); 
    });
}).listen(8080);
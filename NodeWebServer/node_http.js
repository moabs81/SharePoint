var http = require('http');
var fs = require('fs');
var url = require('url');

var portNonSecure = 8080;

var mimes = {
	'css':'text/css',
	'js':'text/javascript',
	'html':'text/html',
	'png':'image/png',
	'jpg':'image/jpg',
	'jpeg':'image/jpeg'
};

var server = http.createServer(function(req, res){
	var q = url.parse(req.url,true);
	//console.log(q);
	var filename = "./public" + q.pathname;
	console.log(filename);
	if (filename == './public/'){
		filename = './public/index.html';
	};
	var whereIsIt = filename.lastIndexOf(".");
	var extension = filename.substring((whereIsIt + 1));
	fs.readFile(filename, function(err, data){
		if (err){
			res.writeHead(404,{'Content-Type': 'text/html'});			
			//console.log(req);
			//console.log("---------------------------------------");
			//console.log("Listening on port " + portNonSecure + ".");
			return res.end("404 Not Found. Make sure the correct URL has been typed. And don't be sad, things like this happen.");
		};
		res.writeHead(200, {'Content-Type': mimes[extension]});
		res.write(data);
		//console.log(req);
		//console.log("---------------------------------------");
		console.log("Listening on port " + portNonSecure + ".");
		return res.end();	
	});
});
server.listen(portNonSecure, function(){
	console.log("Listening on port " + portNonSecure + ".");
});
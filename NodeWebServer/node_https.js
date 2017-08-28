var http = require('http');
var https = require('https');
var fs = require('fs');
var url = require('url');


var portNonSecure = 8080;
var portSecure = 8443;

var options = {
		cert: fs.readFileSync("keys/7300W011Cert.pem"),
		ca: fs.readFileSync("")
	}

var server = http.createServer(function(req, res){
	var q = url.parse(req.url,true);
	var filename = "." + q.pathname;
	if (filename == './'){
		filename = './index.html';
	};
	fs.readFile(filename, function(err, data){
		if (err){
			res.writeHead(404,{'Content-Type': 'text/html'});			
			console.log(req);
			console.log("---------------------------------------");
			console.log("Listening on port " + portNonSecure + ".");
			return res.end("404 Not Found. Make sure the correct URL has been typed. And don't be sad, things like this happen.");
		};
		res.writeHead(200, {'Content-Type': 'text/html'});
		res.write(data);
		console.log(req);
		console.log("---------------------------------------");
		console.log("Listening on port " + portNonSecure + ".");
		return res.end();	
	});
});

var serverSecure = https.createServer(options, function(req,res){
	var q = url.parse(req.url,true);
	var filename = "." + q.pathname;
	if (filename == './'){
		filename = './index.html';
	};
	fs.readFile(filename, function(err, data){
		if (err){
			res.writeHead(404,{'Content-Type': 'text/html'});			
			console.log(req);
			console.log("---------------------------------------");
			console.log("Listening on port " + portSecure + ".");
			return res.end("404 Not Found. Make sure the correct URL has been typed. And don't be sad, things like this happen.");
		};
		res.writeHead(200, {'Content-Type': 'text/html'});
		res.write(data);
		console.log(req);
		console.log("---------------------------------------");
		console.log("Listening on port " + portSecure + ".");
		return res.end();	
	});
});
serverSecure.listen(portSecure,function(){
	console.log("Listening on port " + portSecure + ".");
})
server.listen(portNonSecure, function(){
	console.log("Listening on port " + portNonSecure + ".");
});
var fs = require('fs');

var dir = process.argv[2];
var ext = process.argv[3];

fs.readdir(dir, function (err, list) {

	//RegExp() constructor method. String not known yet
	var re = new RegExp("^.*\." + ext + "$");
 						"^.*\\." + ext + "$"

	 list.forEach( function(item) {

	 	console.log("+" + item);

	    if( re.test(item) ) 
	        console.log(item);

	});
 });
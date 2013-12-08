var fs = require('fs');

// contents
var file = process.argv[2];
var buf = fs.readFileSync(file);
// lines
var bufString = buf.toString();
var bufStringArray = bufString.split('\n');
// return
console.log((bufStringArray.length) - 1);


// official answer
var contents = fs.readFileSync(process.argv[2]);
var lines = contents.toString().split('\n').length - 1;

console.log(lines);
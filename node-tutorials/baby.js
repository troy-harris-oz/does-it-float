var i = 2;
var total = 0;

while (i < (process.argv.length)) {
	num = +process.argv[i];
	total = total + num;
	++i;
}

console.log(total);


// Actual answer!
// var result = 0;

// for(var i = 2;i < process.argv.length; i++){
// 	result += Number(process.argv[i])
// }

// console.log(result);
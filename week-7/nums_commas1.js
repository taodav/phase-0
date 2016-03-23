// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode



// Initial Solution

function nums_commas(num) {
	var length_num = num.toString().length
	var num_array = num.toString().split("")
	if(length_num > 3){
		for (var times = 3; times <= length_num; times += 4){
				nun_array.splice(-times, 0, ",");
				length_num +=1
		}
		console.log(num_array.join(""));
	}
	else{
		console.log(num);}
}



// Refactored Solution




// Your Own Tests (OPTIONAL)

nums_commas(10000000000)
nums_commas(10000000000000000)
nums_commas(1000)


// Reflection
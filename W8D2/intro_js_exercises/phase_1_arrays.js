Array.prototype.uniq = function() {
    let uniqueArray = [];

    for (let i = 0; i < this.length; i++) {

        if (uniqueArray.indexOf(this[i]) === -1) {
            uniqueArray.push(this[i]);
        }
    }

    return uniqueArray;
}

Array.prototype.twoSum = function() {
    let pairs = [];

    for (let i = 0; i < this.length; i++) {
        let val1 = this[i];

        for (let j = i + 1; j < this.length; j++) {
            let val2 = this[j];

            if ((val1 + val2) === 0) {
                pairs.push([i,j]);
            }
        }
    }
    return pairs;
}


// let arr = [-1, 0, 1, 3];
// console.log(arr.twoSum());


Array.prototype.transpose = function() {
  let transposedArray = [];
  for (let i = 0; i < this.length; i++ ) {
    let row = []
    for (let j = 0; j < this[i].length; j++ ) {
      row.push(this[j][i]);
    }
    transposedArray.push(row)
  }

  return transposedArray;
  
}

// let matrix = [[1,2,3],[4,5,6],[7,8,9]];
// console.log(matrix.transpose());

Array.prototype.myEach = function(callback) {
  for (let val in this) {
    callback(val);
  }
}

const add1 = (num) => console.log(num + 1);
const testArr = [1, 2, 3, -5];

testArr.myEach(add1);


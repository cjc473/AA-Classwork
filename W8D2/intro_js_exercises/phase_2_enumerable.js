Array.prototype.myEach = function (callback) {
  for (let i = 0; i < this.length; i++) {
    callback(this[i]);
  }
}

const add1 = (num) => num + 1;
const testArr = [1, 2, 3, -5];

// testArr.myEach(add1);

Array.prototype.myMap = function(callback) {
    let mappedArray = [];

    this.myEach(element => mappedArray.push(callback(element)));

    return mappedArray;
}

// console.log(testArr.myMap(add1));

Array.prototype.myReduce = function (callback, initialValue) {
    
    let newArr = this.slice();
    
    if (initialValue !== undefined) {
        newArr.unshift(initialValue);
    }

    for (let i = 0; i < this.length - 1; i++ ) {
        newArr[i + 1] = callback(newArr[i], newArr[i + 1]);
    }
    return newArr[newArr.length - 1]
}

// console.log(testArr.myReduce( (total, item) => total + item));
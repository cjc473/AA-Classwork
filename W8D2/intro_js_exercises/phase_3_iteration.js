Array.prototype.bubbleSort = function() {
  let sorted = false;

  while (!sorted) {
    sorted = true;

    for (let i = 0; i < this.length; i++) {
      let currentNum = this[i];
      let nextNum = this[i+1];
      if (currentNum > nextNum) {
        [this[i], this[i+1]] = [this[i+1], this[i]]
        sorted = false;
      }
    }
  }

  return this
}

let testArr = [0, -2, 7, 6, 90, 1, 100]



console.log(testArr.bubbleSort())
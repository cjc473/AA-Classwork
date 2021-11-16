// const range = (start, end) => {
//   if (start > end) return [];
//   if (start === end) return [end];

//   return [start].concat(range(start + 1, end))
// }
// console.log(range(2, 0));
// console.log(range(1,7));
// console.log(range(-1, -1));

// const sumRec = (arr) => {
//   if (arr.length === 1) return arr[0];
//   if (arr.length === 0) return 0;

//   return arr[0] + sumRec(arr.slice(1));
// }

// let testArr = [1, 2, 3, 4, -7];
// console.log(sumRec(testArr));

// const exponent1 = (base, exp) => {
//   if (exp === 0) return 1;
//   return base * exponent1(base, exp - 1) 
// }

// console.log(exponent1(3, 4))

// const exponent2 = (base, exp) => {
//   if (exp === 0) return 1;
//   if (exp === 1) return base;

//   if (exp % 2 === 0) {
//     return exponent2(base, (exp / 2)) * exponent2(base, (exp / 2));
//   } else {
//     base * (exponent2(base, (exp - 1) / 2) * exponent2(base, (exp - 1) / 2));
//   }
// }

// console.log(exponent2(3, 4))

// const fibonacci = (n) => {
//   if (n <= 2) return [1, 1].slice(0, n);
//   prevFib = fibonacci(n-1);
//   return prevFib.concat(prevFib[prevFib.length - 1] + prevFib[prevFib.length - 2]);
// }

// console.log(fibonacci(7))

// const deepDup = (arr) => {
//   if (!(arr instanceof Array)) {
//     return arr;
//   }
//   return arr.map((el) => {
//     return deepDup(el);
//   });
// }

// let nestedArr = [1, 2, [3, 4, [5], 6]];

// console.log(deepDup(nestedArr));

const bsearch = (arr, target) => {
  let mid = Math.ceil(arr.length / 2);
  
  if (target === arr[mid]) return mid
}

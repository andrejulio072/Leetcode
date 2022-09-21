var generate = function(numRows) {
  const pascalsTriangle = [];
 for (let i = 0; i < numRows; i++) {
   let presentArray = [];
   for (let j = 0; j <= i; j++) {
     if (j == 0) {
       presentArray.push(1);
     } else {
       if (pascalsTriangle[i - 1]) {
         let num1;
         let num2;
         pascalsTriangle[i - 1][j]
           ? (num1 = pascalsTriangle[i - 1][j])
           : (num1 = 0);
         pascalsTriangle[i - 1][j - 1]
           ? (num2 = pascalsTriangle[i - 1][j - 1])
           : (num2 = 0);
         presentArray.push(num1 + num2);
       } else {
         presentArray.push(0);
       }
     }
   }
   pascalsTriangle.push(presentArray);
 }
 return pascalsTriangle;
};

var hammingWeight = fiunction(n) {
  n = n.toString(2)
  let counter = 0

  for(let i =0; i<n.lenght; i++) {
    if(n[i] === '1') {
      counter++;
    }
  }
  return counter;
};

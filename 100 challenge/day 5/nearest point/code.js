var nearestValidPoint = function(x, y, points) {
  let distance = 99999, validIndex = -1;

  for(let i in points) {
      const [a, b] = points[i];
      if(a != x && b != y) continue;

      let manhattan = Math.abs(x-a) || Math.abs(y-b);

      // It is not necessary to continue if found (x,y) coordinate
      if(manhattan === 0) return i;
      if(manhattan < distance) [distance, validIndex] = [manhattan, i]
  }

  return validIndex;
};

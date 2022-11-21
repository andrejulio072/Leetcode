def hamming_weight(n)
  counter = 0

  while n>0
    n = n & (n-1)
    counter +=1
  end
  counter
end

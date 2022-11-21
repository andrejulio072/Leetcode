def average(salary)
  #sort the array
  salary.sort!
  #remove the last element-max
  salary.pop
  #remove the first element-min
  salary.shift
  # calculate the average with reduce
  average = salary.reduce(:+).fdiv(salary.count)
  return average
end

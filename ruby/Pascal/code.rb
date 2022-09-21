def generate(num_rows)
  output = []

  (1..num_rows).each do |row|
    val = 1  # The first value on each row always 1
    row_output = []

    (1..row).each do |col|
      row_output.append(val)
      val = (val * (row - col)) / col
    end

    output.append(row_output)
  end

  output
end

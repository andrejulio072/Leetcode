def backspace_compare(s, t)
  construct_string(s) == construct_string(t)
end

def construct_string(s)
  stack = []
  s.chars.each do |c|
    if ?# == c
      stack.pop
    else
      stack.push c
    end
  end
  stack.join
end

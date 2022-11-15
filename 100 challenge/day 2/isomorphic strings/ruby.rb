# EXPLAINED VERSION

def is_isomorphic(s, t)
  return if s.length != t.length

  # create an empty hash that will have:
  # key => chars from s
  # value => corresponding char from t
  char_map = {}

  # iterate through each char of the first string (s)
  # compare to the string from t
  s.split("").each.with_index do |char, index|
    # if the char already exists in the hash
    if char_map[char]
      # check if the value is the same as we have now
      # in the case it's not the same, return false
      return false if char_map[char] != t[index]
    else
      # return false if the value is already in the hash with another key
      return false if char_map.values.include?(t[index])
      # if the char doesn't exist in the char_map hash, add key-value pair
      char_map[char] = t[index]
    end
  end

  # if no inconsistency was found, return true
  return true
end

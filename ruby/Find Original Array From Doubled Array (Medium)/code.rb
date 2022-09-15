# Approach:

# Return empty if collection size is odd (can't be the result of a doubled array)
# Sort the input so we can start with the smallest number and work our way up
# We know that the smallest number cannot have been doubled from the original array
# Double the smallest number and add it to a collection of numbers to be removed
# If we encounter a number to be removed, set that value in the changed array to be nil (removed)
# Otherwise, double the number and add it to the numbers to remove
# Compact the array to remove nil values
# Check that the result is half the size of the input
# # @param {Integer[]} changed
# # @return {Integer[]}

def find_original_array(changed)
  return [] unless changed.length % 2 == 0

  expected_len = changed.length / 2

  changed.sort!

  remove = []
  changed.each_with_index do |num, i|
    remove << num * 2 and next unless remove[0] == num

    remove.shift
    changed[i] = nil
  end

  changed.compact!
  changed.length == expected_len ? changed : []
end

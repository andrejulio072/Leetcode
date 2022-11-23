# @param {Integer} x
# @param {Integer} y
# @param {Integer[][]} points
# @return {Integer}
def nearest_valid_point(x, y, points)
	indexes = []
	# create an array of index positions that satisfy the prompt
    for i in (0..(points.length-1))
        if points[i][0] == x || points[i][1] == y
            indexes.append(i)
        end
    end
    # return -1 if no index positions added
    return -1 if indexes[0] == nil
    # set variables for comparision when iterating through indexes
    value = indexes[0]
    smallest = 10000
    # iterate through indexes finding the one with the smallest distance
    indexes.each do |i|
        if (points[i][0] - x).abs + (points[i][1] - y).abs < smallest
            smallest = (points[i][0] - x).abs + (points[i][1] - y).abs
            value = i
        end
    end
    # return index with the smallest manhattan distance
    return value
end
# Second approach using each_with_index:

def nearest_valid_point(x, y, points)
	indexes = []
    points.each_with_index do |point, i|
        if point[0] == x || point[1] == y
            distance = (point[0] - x).abs + (point[1] - y).abs
            indexes.append([distance, i])
        end
    end
    return -1 if indexes[0] == nil
    indexes.sort!
    return indexes[0][1]
end

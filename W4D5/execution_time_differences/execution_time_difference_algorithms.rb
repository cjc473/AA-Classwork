#asdf

# def my_min(array)
#   smallest = array.first
#   array.each_with_index do |ele, i|
#     smallest = ele if array[i+1..-1].all?{ |ele2| ele <= ele2 } && ele < smallest
#   end
#   smallest
# end

# def my_min(array)
#   smallest = array.first
#   (1..array.length - 1).each do |i|
#     smallest = array[i] if array[i] < smallest
#   end
#   smallest
# end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)

# def largest_contiguous_subsum(arr)
#   subsums = []

#   (0...arr.length).each do |i|
#     (i...arr.length).each do |j|
#       subsums << arr[i..j].sum
#     end
#   end

#   subsums.max
# end

a_list = [5, 3, -7]
b_list = [2, 3, -6, 7, -6, 7]
c_list = [-5, -1, -3]

p largest_contiguous_subsum(a_list)
p largest_contiguous_subsum(b_list)
p largest_contiguous_subsum(c_list)

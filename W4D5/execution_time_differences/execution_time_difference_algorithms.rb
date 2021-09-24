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
# slice-length arr of 5 number, check 5 differenct slice-lengths from 1,2,3,4,5
# list of number, index 0, checked_arr = [5] 

def largest_contiguous_subsum(arr)
  largest_sum = arr.first
  current_sum = arr.first
  
  if arr.any? {|n| n > -1}
    current_sum = 0
    (0...arr.length).each do |i|
      if current_sum + arr[i] > 0
        current_sum += arr[i]
      else
        current_sum = 0
      end
      largest_sum = current_sum if current_sum > largest_sum
    end
  else
    (0...arr.length).each {|i| largest_sum = arr[i] if arr[i] > largest_sum}
  end

  largest_sum

end


p largest_contiguous_subsum(a_list)
p largest_contiguous_subsum(b_list)
p largest_contiguous_subsum(c_list)
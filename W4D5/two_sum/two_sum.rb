def bad_two_sum?(arr, target_sum) # O(n^2)
  all_sums = []
  (0...arr.length).each do |i|
    (0...arr.length).each do |j|
      if i < j
        all_sums << arr[i] + arr[j]
      end
    end
  end
  all_sums.include?(target_sum)
end


def okay_two_sum?(arr, target_sum)
  new_arr = arr.sort.select { |n| target_sum > n }
  (new_arr.length - 1).downto(0).each do |i|
    return true if new_arr[0...i].include?(target_sum - new_arr[i])
  end
  false
end


def good_two_sum?(arr, target_sum)

end






arr = [0, 1, 5, 7]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false
def my_uniq(array)
  count = Hash.new(0)
  array.each { |ele| count[ele] += 1 }
  count.keys
end
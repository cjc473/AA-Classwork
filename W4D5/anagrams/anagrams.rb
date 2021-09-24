# def first_anagram?(str_1, str_2)
#   chars_1 = str_1.split("").permutation.to_a
#   chars_1.map! { |char| char.join("") }
#   chars_1.include?(str_2)
# end

# def second_anagram?(str_1, str_2)
#   str_1.each_char.with_index do |char, i|
#     return false if str_2.index(char).nil?
#     str_2 = str_2[0...str_2.index(char)] + str_2[(str_2.index(char)+1)..-1]
#   end
#   str_2.length == 0
# end

# def third_anagram?(str_1, str_2)
#   str_1.split("").sort == str_2.split("").sort
# end

def fourth_anagram?(str_1, str_2)
  

end

p third_anagram?("gizmo", "sally")    #=> false
p third_anagram?("elvis", "lives")    #=> true
def first_anagram?(str_1, str_2)
  chars_1 = str_1.split("").permutation.to_a
  chars_1.map! { |char| char.join("") }
  chars_1.include?(str_2)
end

def second_anagram?(str_1, str_2)
  str_1.each_char.with_index do |char, i|
    return false if str_2.index(char).nil?
    str_2 = str_2[0...str_2.index(char)] + str_2[(str_2.index(char)+1)..-1]
  end
  str_2.length == 0
end

def third_anagram?(str_1, str_2)
  str_1.split("").sort == str_2.split("").sort
end

def fourth_anagram?(str_1, str_2)
  hash_1 = Hash.new(0)
  hash_2 = Hash.new(0)
  str_1.each_char {|char| hash_1[char] +=1 }
  str_2.each_char {|char| hash_2[char] +=1 }
  hash_1 == hash_2
end

# p fourth_anagram?("gizmo", "sally")    #=> false
# p fourth_anagram?("elvis", "lives")    #=> true


def fifth_anagram?(str_1, str_2)
  hash = Hash.new(0)
  str_1.each_char {|char| hash[char] +=1 }
  str_2.each_char {|char| hash[char] -=1 }
  hash.values.all? {|v| v == 0}
end


p fifth_anagram?("gizmo", "sally")    #=> false
p fifth_anagram?("elvis", "lives")    #=> true
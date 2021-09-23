class Array

  def my_uniq
    count = Hash.new(0)
    self.each { |ele| count[ele] += 1 }
    count.keys
  end

  def two_sum
    new_arr = []
    self.each_with_index do |ele, idx|
      self.each_with_index do |ele2, idx2|
        if idx2 > idx && ele + ele2 == 0
          new_arr << [idx, idx2]
        end
      end
    end
    new_arr
  end

  def my_transpose
    zipped = Array.new(self.length) {Array.new(self.length)}
    (0...self.size).each do |i|
      (0...self.size).each do |j|
        zipped[i][j] = self[j][i]
      end
    end
    zipped
  end
end
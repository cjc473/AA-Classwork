class MaxIntSet
  attr_reader :max, :store
  def initialize(max)
    @max = max
    @store = {}
  end

  def insert(num)
    if !(0..max).include?(num)
      raise 'Out of bounds'
    else
      @store[num] = true
    end
  end

  def remove(num)
    @store[num] = false
  end

  def include?(num)
    @store[num] == true
  end

  private

  def is_valid?(num)
  end

  def validate!(num)
  end
end


class IntSet

  attr_reader :store

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    idx = num % store.length
    store[idx] << num if !store[idx].include?(num)
  end

  def remove(num)
    idx = num % store.length
    store[idx].delete(num) 
  end

  def include?(num)
    @store.each do |row|
      return true if row.include?(num)
    end
    false
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count, :curr_length, :store

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
    idx = num % num_buckets
    if !include?(num)
      @store[idx] << num 
      @count += 1
      resize! if count > num_buckets
    end
  end

  def remove(num)
    idx = num % num_buckets
    @count -= 1 if @store[idx].delete(num)
  end

  def include?(num)
    @store.each do |row|
      return true if row.include?(num)
    end
    false
  end



  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
    old_store = @store
    @count = 0
    @store = Array.new(num_buckets * 2) {Array.new}

    old_store.flatten.each do |num|
      insert(num)
    end


    # if count == num_buckets


      # new_store = Array.new(num_buckets * 2) {Array.new}
      # @curr_length = new_store.length
      
      # @store.each do |row|
      #   new_store[row.first % @curr_length] << row.first
      # end
      # @store = new_store



  end
end

# a = ResizingIntSet.new(20)
# p a.curr_length
# p a.store
# p a.resize!
# p a.curr_length
# p a.store

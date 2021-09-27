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
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
    @curr_length = @store.length
  end

  def insert(num)
    idx = num % @curr_length
    @store[idx] << num if !@store[idx].include?(num)
    @count += 1
  end

  def remove(num)
    idx = num % @curr_length
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
    num_buckets = @store.length
    if count == num_buckets
      new_store = Array.new(num_buckets * 2) {Array.new}
      @curr_length = new_store.length
      
      @store.each do |row|
        new_store[row.first % @curr_length] << row.first
      end
      @store = new_store
    end



  end
end

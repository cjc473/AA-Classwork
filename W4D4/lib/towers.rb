class Towers
  attr_accessor :stack_1, :stack_2, :stack_3
  def initialize(stack_1=[5,4,3,2,1], stack_2=[], stack_3=[])
    @stack_1 = stack_1
    @stack_2 = stack_2
    @stack_3 = stack_3
  end

  def move(start_stack, end_stack)
    piece = start_stack.pop 
    end_stack.push(piece)
  end

  def won?
    @stack_3 == [5, 4, 3, 2, 1]
  end
end
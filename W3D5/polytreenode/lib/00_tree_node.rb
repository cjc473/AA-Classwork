class PolyTreeNode

  attr_reader :parent, :children, :value

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def siblings
    parent.children
  end

  def parent=(parent_prop)
    if parent_prop != nil
      siblings.delete(self) if !parent.nil?
      @parent = parent_prop
      siblings << self
    else
      @parent = nil
    end
  end

  def add_child(child_node)
    child_node.parent = self
  end

  def remove_child(child_node)
    raise "child does not exist" if !children.include?(child_node)
    child_node.parent = nil
  end

  def inspect
    "Node: #{self.value}"
  end

  def dfs(target)
    return self if target == self.value

    children.each do |child|
      next_search = child.dfs(target)
      return next_search if !next_search.nil?
    end

    return nil
  end

  #      1
  #     / \
  #    2   3
  #  / / \
  # 4  5  6



  def bfs(target)
    queue = [self]
    while !queue.empty?
      current = queue.shift
      return current if current.value == target
      current.children.each { |child| queue.push(child) }
    end
  end

  

end
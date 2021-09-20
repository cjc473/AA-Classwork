require_relative "00_tree_node.rb"
require "byebug"

class KnightPathFinder

  def self.valid_moves(pos)
    moves = Array.new(8) { pos }

    moves = moves.map.with_index do |move, i|
      row, col = move
      case i
      when 0
        [(row-2), (col-1)]
      when 1
        [(row-2), (col+1)]
      when 2
        [(row-1), (col-2)]
      when 3
        [(row-1), (col+2)]
      when 4
        [(row+1), (col-2)]
      when 5
        [(row+1), (col+2)]
      when 6
        [(row+2), (col-1)]
      when 7
        [(row+2), (col+1)]
      end
    end

    moves.select { |move| self.valid_pos?(move) }
  end

  def self.valid_pos?(pos)
    row, col = pos
    if (0..7).include?(row) && (0..7).include?(col)
      true
    else
      false
    end
  end

  attr_reader :root_node, :considered_positions

  def initialize(start_pos, target)
    @root_node = PolyTreeNode.new(start_pos)
    @considered_positions = [start_pos]
    build_move_tree(self.root_node.value, target)
  end

  def new_move_positions(pos)
    moves = KnightPathFinder.valid_moves(pos)
    new_moves = moves.reject { |move| @considered_positions.include?(move) }
    new_moves.each { |move| @considered_positions << move }
    new_moves
  end

  def build_move_tree(pos, target)
    # debugger
    first_moves = new_move_positions(pos)
    queue = first_moves
    while !queue.empty?
      current = queue.shift
      # p queue
      if current == target
        puts " -------- "
        return p current
      end
      current_moves = new_move_positions(current)
      current_moves.each { |move| queue.push(move) }
    end
  end

  # def bfs(target)
  #   queue = [self]
  #   while !queue.empty?
  #     current = queue.shift
  #     return current if current.value == target
  #     current.children.each { |child| queue.push(child) }
  #   end
  # end


# starting pos is root tree node. you generate children using available moves.


end



k = KnightPathFinder.new([0, 0], [3, 3])
p k
# p KnightPathFinder.valid_moves([1,2])
# p k.considered_positions
# p k.new_move_positions([0,0])
# p k.considered_positions
# p k.root_node
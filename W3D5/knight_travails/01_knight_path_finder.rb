require_relative "00_tree_node.rb"

class KnightPathFinder

  attr_reader :pos, :moves

  def initialize(start_pos)
    @pos = start_pos
    @moves = []
  end

  def available_moves(pos)
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


  def valid_pos?(pos)
    row, col = pos
    if (0..7).include?(row) && (0..7).include?(col)
      true
    else
      false
    end
  end




end



# k = KnightPathFinder.new([0, 0])
# p k.available_moves([1,2])
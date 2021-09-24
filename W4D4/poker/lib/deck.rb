require_relative "card"
class Deck
  attr_reader :sleeve, :size
  ALL_CARDS = [:A, :two, :three, :four, :sive, :six, :seven, :eight, :nine, :ten, :J, :Q, :K]
  def initialize
    @sleeve = Deck.create_deck
    @size = sleeve.length
  end

  def self.create_deck
    hearts = ALL_CARDS.map {|card| Card.new(:hearts, card)}
    clubs = ALL_CARDS.map {|card| Card.new(:clubs, card)}
    diamonds = ALL_CARDS.map {|card| Card.new(:diamonds, card)}
    spades = ALL_CARDS.map {|card| Card.new(:spades, card)}
    shuffled_deck = hearts + clubs + diamonds + spades
    return shuffled_deck.shuffle
  end


end
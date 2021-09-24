require "card"

describe Card do
  subject(:card) { Card.new(:diamond, :two) }
    describe "#initialize" do
      context "take in suit and a value" do
        it "sets instance variables for suit value" do
          expect(card.suit).to be(:diamond)
          expect(card.value).to be(:two)
        end
      end

  end




end
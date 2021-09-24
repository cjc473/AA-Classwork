require "towers"

describe Towers do 
  subject(:tower) {Towers.new} 
  describe "move" do
    context "when player inputs move" do 
      it "moves tile to new stack" do
        expect(tower.move(tower.stack_1, tower.stack_3)).to eq(
          tower.stack_3
        )
      end
    end
  end

  describe "won?" do
    let(:tower) { Towers.new([], [], [5,4,3,2,1]) }
    context "when stack_3 has all tiles in correct order" do
      it "returns true" do
        expect(tower.won?).to eq(true)
      end
    end
  end

end
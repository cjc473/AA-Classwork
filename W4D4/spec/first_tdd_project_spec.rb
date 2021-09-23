require 'first_tdd_projects'

describe "my_uniq" do
  let(:array) { [1, 2, 2, 2, 4] }
    it "should take in an array" do
        expect{my_uniq(array)}.to_not raise_error
    end

  context "when there are duplicates" do
    it "remove duplicates" do
      expect(my_uniq(array)).to eq([1, 2, 2, 2, 4].uniq)
    end
  end
end
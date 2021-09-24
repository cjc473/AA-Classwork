require 'first_tdd_projects'

describe "my_uniq" do
  let(:array) { [1, 2, 2, 2, 4] }
    it "should take in an array" do
        expect{array.my_uniq}.to_not raise_error
    end

  context "when there are duplicates" do
    it "remove duplicates" do
      expect(array.my_uniq).to eq([1, 2, 2, 2, 4].uniq)
    end
  end
end

describe "two_sum" do
  let(:array) { [-1, 0, 2, -2, 1] }
    it "should take in an array" do
      expect{array.two_sum}.to_not raise_error
    end

  context "when two elements equal 0" do
    it "adds their index to array" do
      expect(array.two_sum).to eq([[0, 4], [2, 3]])
    end
  end

describe "my_transpose" do
  let(:array) { [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]}
    it "should take in a matrix" do 
      expect{array.my_transpose}.to_not raise_error
    end
  
  it "should transpose an array" do
    expect(array.my_transpose).to eq(array.transpose)
  end
end

  describe "stock_picker" do
    let(:array) { [5, 12, 1, 4, 10, 8] }
    it "should take in an array" do
      expect{array.stock_picker}.to_not raise_error
    end

    context "should find the biggest difference in prices" do
      it "should add pairs of indices to array" do
        expect(array.stock_picker).to eq([2, 4])
      end
    end
  end


end
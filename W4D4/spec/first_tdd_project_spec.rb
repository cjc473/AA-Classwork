describe "my_uniq" do
  # subject(array) { [1, 2, 2, 2, 4] }

  context "when there are duplicates" do
    it "remove duplicates" do
      expect([1, 2, 2, 2, 4].uniq).to eq(true)
    end
  end
end
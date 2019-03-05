describe Edge do
  it "assigns attributes correctly" do
    edge = Edge.new("N0", "N1", 10)
    expect(edge.from).to eq "N0"
    expect(edge.to).to eq "N1"
    expect(edge.weight).to eq 10
  end

  it "ensures the weight is an integer" do
    edge = Edge.new("N0", "N1", "10")
    expect(edge.weight).to be_an(Integer)
  end
end

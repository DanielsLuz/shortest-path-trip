describe Graph do
  let(:edges) { [["N0", "N1", 10]] }
  it "inserts edges" do
    graph = Graph.new(edges)
    expect(graph.edges).to all be_an(Edge)
  end

  it "inserts nodes" do
    graph = Graph.new(edges)
    expect(graph.nodes).to match_array(%w[N0 N1])
  end

  fit "inserts nodes without duplicates" do
    graph = Graph.new([["N0", "N1", 10], ["N2", "N1", 20]])
    expect(graph.nodes).to match_array(%w[N0 N1 N2])
  end

  it "initializes as expected" do
    graph = Graph.new(edges)
    expect(graph.edges).to include(Edge.new("N0", "N1", 10))
  end
end

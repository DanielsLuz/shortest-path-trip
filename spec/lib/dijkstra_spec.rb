describe Dijkstra do
  it "computes correctly" do
    graph = Graph.new(
      [
        ["GRU", "BRC", 10],
        ["BRC", "SCL", 5],
        ["GRU", "CDG", 75],
        ["GRU", "SCL", 20],
        ["GRU", "ORL", 56],
        ["ORL", "CDG", 53],
        ["ORL", "CDG", 8],
        ["SCL", "ORL", 20]
      ]
    )

    path = Dijkstra.new(graph).compute_shortest_path("GRU", "CDG")
    expect(path).to eq %w[GRU BRC SCL ORL CDG]
  end

  it "returns nil if source not in graph" do
    graph = Graph.new([["GRU", "BRC", 10]])

    path = Dijkstra.new(graph).compute_shortest_path("NOT IN GRAPH", "CDG")
    expect(path).to eq nil
  end

  it "returns nil if target not in graph" do
    graph = Graph.new([["GRU", "BRC", 10]])

    path = Dijkstra.new(graph).compute_shortest_path("GRU", "NOT IN GRAPH")
    expect(path).to eq nil
  end
end

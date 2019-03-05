class Graph
  attr_reader :edges, :nodes

  def initialize(edges)
    @edges = edges.map {|edge| Edge.new(*edge) }
    @nodes = @edges.map {|edge| [edge.from, edge.to] }.flatten.uniq
  end
end

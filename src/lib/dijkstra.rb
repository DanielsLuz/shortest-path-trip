class Dijkstra
  def initialize(graph)
    @graph = graph
    @distances = Hash.new {|h, k| h[k] = Float::INFINITY }
    @previous = Hash.new {|h, k| h[k] = nil }
    @graph.nodes.each {|node| @distances[node] }
    @graph.nodes.each {|node| @previous[node] }
  end

  def compute_shortest_path(source, target)
    return unless @graph.nodes.include?(source) && @graph.nodes.include?(target)

    @distances[source] = 0

    queue = @graph.nodes.clone

    while queue.any?
      node = queue.min_by {|node| @distances[node] }
      queue.delete(node)

      adjacent_edges(node).each do |edge|
        relax(edge)
      end
    end

    find_shortest_path(source, target)
  end

  private

  def find_shortest_path(source, target)
    path = []
    while target != source
      path.unshift(target)
      target = @previous[target]
    end
    path.unshift(source)
  end

  def relax(edge)
    return unless @distances[edge.from] + edge.weight < @distances[edge.to]
    @distances[edge.to] = @distances[edge.from] + edge.weight
    @previous[edge.to] = edge.from
  end

  def adjacent_edges(node)
    @graph.edges.select {|edge| edge.from == node }
  end
end

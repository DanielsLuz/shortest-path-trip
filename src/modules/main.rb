class Main
  def self.run(input_file, route)
    source, target = route.split("-")
    edges = load_input_file(input_file)

    graph = Graph.new(edges)
    shortest_path = Dijkstra.new(graph).compute_shortest_path(source, target)

    puts("Best route: #{pretty_format_path(shortest_path)}")
  end

  def self.load_input_file(input_file)
    File.open(input_file).readlines.map do |line|
      line.strip.split(",")
    end
  end

  def self.pretty_format_path(path)
    path ? path.join(" -> ") : "Not found"
  end
end

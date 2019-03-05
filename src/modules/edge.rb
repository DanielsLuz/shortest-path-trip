class Edge
  attr_reader :from, :to, :weight

  def initialize(from, to, weight)
    @from = from
    @to = to
    @weight = weight.to_i
  end

  def ==(edge)
    @from == edge.from && @to == edge.to && @weight == edge.weight
  end
end

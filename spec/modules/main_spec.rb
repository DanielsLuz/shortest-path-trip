describe Main do
  it "reads the input file" do
    array = Main.load_input_file("resources/sample_input.txt")
    expect(array).to eq [%w[GRU BRC 10], %w[BRC SCL 5]]
  end

  it "prints the array formatted" do
    path = %w[GRU CNF BSB]
    expect(Main.pretty_format_path(path)).to eq "GRU -> CNF -> BSB"
  end
end

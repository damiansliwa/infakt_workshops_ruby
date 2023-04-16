class CountElements
  attr_reader :results
  def initialize(results)
    @results = results
  end

  def perform
    counts = Hash.new(0)
    results.each { |result| counts[result] += 1 }
    counts
  end
end

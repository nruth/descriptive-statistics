module DescriptiveStatistics
  module Spread
    def variance
      return if length < 1
      sum = self.inject(0) {|accumulator, value| accumulator + (value - mean) ** 2 }
      sum / (length.to_f - 1)
    end

    def population_variance
      return if length < 1
      sum = self.inject(0) {|accumulator, value| accumulator + (value - mean) ** 2 }
      sum / length.to_f
    end

    def standard_deviation
      return if length < 2
      Math.sqrt(variance)
    end

    def relative_standard_deviation
      return if length < 1
      (population_standard_deviation / mean) * 100.0
    end

    def population_standard_deviation
      return if length < 1
      Math.sqrt(population_variance)
    end
  end
end

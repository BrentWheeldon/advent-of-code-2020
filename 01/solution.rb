# frozen_string_literal: true

require "set"

class Solution
  def self.from_file(filepath, count: 2)
    new(File.read(filepath), count: count)
  end

  def initialize(input, count: 2)
    @entries = input.lines.map(&:to_i)
    @count = count
  end

  def result
    summing_entries.inject(:*)
  end

  private

  attr_reader :entries, :count

  def summing_entries
    permutations = entries.permutation(count).to_set

    permutations.each do |elements|
      if elements.inject(:+) == 2020
        return elements
      end
    end

    raise RuntimeError.new("No set of #{count} entries sum to 2020!")
  end
end

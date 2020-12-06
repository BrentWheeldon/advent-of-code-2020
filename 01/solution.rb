# frozen_string_literal: true

class Solution
  def self.from_file(filepath)
    new(File.read(filepath))
  end

  def initialize(input)
    @entries = input.lines.map(&:to_i)
  end

  def result
    summing_entries.inject(:*)
  end

  private

  attr_reader :entries

  def summing_entries
    entries.each_with_index do |first_entry, first_index|
      entries.each_with_index do |second_entry, second_index|
        next if first_index == second_index

        if first_entry + second_entry == 2020
          return [first_entry, second_entry]
        end
      end
    end

    raise RuntimeError.new("No pair of entries sum to 2020!")
  end
end

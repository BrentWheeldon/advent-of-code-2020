require "rspec"
require_relative "./solution.rb"

RSpec.describe Solution do
  subject { solution.result }

  let(:input) do
    <<~TXT
      1721
      979
      366
      299
      675
      1456
    TXT
  end

  context "when we're looking for two numbers that sum" do
    let(:solution) { described_class.new(input) }

    it { is_expected.to equal 514579 }
  end

  context "when we're looking for three numbers that sum" do
    let(:solution) { described_class.new(input, count: 3) }

    it { is_expected.to equal 241861950 }
  end
end

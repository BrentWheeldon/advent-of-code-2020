require "rspec"
require_relative "./solution.rb"

RSpec.describe Solution do
  subject { solution.result }

  let(:solution) { described_class.new(input) }
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

  it { is_expected.to equal 514579 }
end

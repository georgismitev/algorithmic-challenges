class SuffixArrayMember
  attr_reader :suffix
  attr_accessor :index, :rank

  def initialize(suffix, index, rank)
    @suffix = suffix
    @index = index
    @rank = rank
  end
end

=begin
Write your code for the 'Nucleotide Count' exercise in this file. Make the tests in
`nucleotide_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/nucleotide-count` directory.
=end
class Nucleotide
  NUCLEOTIDES = %w{ A C T G U }

  def self.from_dna(chain)
    @chain = chain
    @chain.split("").each {|nucleotide| raise ArgumentError unless NUCLEOTIDES.include?(nucleotide) }
    self
  end

  def self.histogram
    { 'A' => count('A'),
      'C' => count('C'),
      'T' => count('T'),
      'G' => count('G') }
  end

  def count(nucleotide)
    @chain.count(nucleotide)
  end
end

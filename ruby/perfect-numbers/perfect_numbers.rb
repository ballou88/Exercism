# Write your code for the 'Perfect Numbers' exercise in this file. Make the tests in
# `perfect_numbers_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/perfect-numbers` directory.
class PerfectNumber
  def self.classify(number)
    raise RuntimeError if number < 1

    aliqout = factors_of(number).inject(:+)

    if aliqout > number
      'abundant'
    elsif aliqout == number
      'perfect'
    else
      'deficient'
    end
  end

  def self.factors_of(number)
    (1..number / 2).select { |n| (number % n).zero? }
  end
end

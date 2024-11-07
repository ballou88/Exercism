class Raindrops
  def self.convert(num)
    string = ''
    string += 'Pling' if (num % 3).zero?
    string += 'Plang' if (num % 5).zero?
    string += 'Plong' if (num % 7).zero?
    string.empty? ? num.to_s : string
  end
end

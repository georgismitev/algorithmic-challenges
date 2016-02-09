def self.itow
  @itow ||= {
    0 => 'Zero',
    1 => 'One',
    2 => 'Two',
    3 => 'Three',
    4 => 'Four',
    5 => 'Five',
    6 => 'Six',
    7 => 'Seven',
    8 => 'Eight',
    9 => 'Nine',
    10 => 'Ten',
    11 => 'Eleven',
    12 => 'Twelve',
    13 => 'Thirteen',
    14 => 'Fourteen',
    15 => 'Fifteen',
    16 => 'Sixteen',
    17 => 'Seventeen',
    18 => 'Eighteen',
    19 => 'Nineteen',
    20 => 'Twenty',
    30 => 'Thirty',
    40 => 'Forty',
    50 => 'Fifty',
    60 => 'Sixty',
    70 => 'Seventy',
    80 => 'Eighty',
    90 => 'Ninety'
  }
end

def self.ntow
  {
    1_000_000_000_000 => 'Trillion',
    1_000_000_000 => 'Billion',
    1_000_000 => 'Million',
    1_000 => 'Thousand',
    100 => 'Hundred'
  }
end

def self.less_than_a_hundred_to_words(number)
  words = []

  if number > 0
    if number > 0 && number <= 20
      words.push(itow[number])
    elsif number < 100
      words.push(itow[(number / 10) * 10])
      words.push(itow[number % 10]) if number % 10 > 0
    end
  end

  words
end

def self.hundred_to_words(number, power)
  words = []

  if number >= power
    hundreds = number / power
    if hundreds >= 100 && hundreds < 1000
      words.push(itow[hundreds / 100])
      words.push(ntow[100])
    end

    words.push(less_than_a_hundred_to_words((number / power) % 100))
    words.push(ntow[power])
  end

  words
end

def self.convert_to_words(number)
  words = []
  previous_power = 1_000_000_000_000
  words.push(hundred_to_words(number, previous_power))
  ntow.each_pair do |power_of_ten, word|
    words.push(hundred_to_words(number % previous_power, power_of_ten))
    previous_power = power_of_ten
  end
  words.push(less_than_a_hundred_to_words(number % 100)) if number % 100 > 0
  words.push(itow[0]) if number == 0
  words.flatten.join(' ')
end

gets.to_i.times { puts convert_to_words(gets.to_i) }

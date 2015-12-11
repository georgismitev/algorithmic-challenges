h = gets.to_i # 1 ≤ H < 12
m = gets.to_i # 0 ≤ M < 60

def self.number_to_words
  @number_to_words ||= {
    1 => 'one',
    2 => 'two',
    3 => 'three',
    4 => 'four',
    5 => 'five',
    6 => 'six',
    7 => 'seven',
    8 => 'eight',
    9 => 'nine',
    10 => 'ten',
    11 => 'eleven',
    12 => 'twelve',
    13 => 'thirteen',
    14 => 'fourteen',
    15 => 'quarter',
    16 => 'sixteen',
    17 => 'seventeen',
    18 => 'eightteen',
    19 => 'nineteen',
    20 => 'twenty',
    21 => 'twenty one',
    22 => 'twenty two',
    23 => 'twenty three',
    24 => 'twenty four',
    25 => 'twenty five',
    26 => 'twenty six',
    27 => 'twenty seven',
    28 => 'twenty eight',
    29 => 'twenty nine',
    30 => 'half'
  }
end

def self.minutes(m, h)
  if m == 0
    ''
  elsif m == 1 || m == 59
    'one minute'
  elsif m % 15 == 0 && m != 30
    number_to_words[15]
  elsif m == 30
    number_to_words[30]
  else
    (m >= 2 && m <= 30 ? number_to_words[m] : number_to_words[60 - m]) + ' minutes'
  end
end

def self.time(m, h)
  return '' if m == 0
  m >= 1 && m <= 30 ? 'past' : 'to'
end

def self.hours(m, h)
  m <= 30 ? number_to_words[h] : number_to_words[h + 1]
end

def self.round_hour(m, h)
  m == 0 ? "o' clock" : ''
end

puts "#{minutes(m, h)} #{time(m, h)} #{hours(m, h)} #{round_hour(m, h)}".strip

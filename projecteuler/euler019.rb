require 'date'

def self.days_per_month
  @days_per_month ||= {
    1 => 31,
    2 => 28,
    3 => 31,
    4 => 30,
    5 => 31,
    6 => 30,
    7 => 31,
    8 => 31,
    9 => 30,
    10 => 31,
    11 => 30,
    12 => 31
  }
end

def self.leap_year?(year)
  if year % 4 != 0
    false
  elsif year % 100 != 0
    true
  elsif year % 400 != 0
    false
  else
    true
  end
end

def self.month_days(month, year)
  if month == 2 && leap_year?(year)
    29
  else
    days_per_month[month]
  end
end

def self.counting_sundays(y1, m1, d1, y2, m2, d2)
  start_date = Date.new(y1, m1, d1)
  start_date += 7 - start_date.cwday
  end_date = Date.new(y2, m2, d2)

  return 0 if start_date > end_date

  sundays = 0

  day = start_date.day
  month = start_date.month
  year = start_date.year

  while true do
    sundays += 1 if day == 1

    day += 7
    days_in_the_month = month_days(month, year)

    if day > days_in_the_month
      day = day - days_in_the_month
      if month + 1 == 13
        year += 1
        month = 1
      else
        month += 1
      end
    end

    break if (year > y2) ||
      (year == y2 && month > m2) ||
      (year == y2 && month == m2 && day > d2)
  end

  sundays
end

gets.to_i.times do
  y1, m1, d1 = gets.strip.split.map(&:to_i)
  y2, m2, d2 = gets.strip.split.map(&:to_i)
  puts counting_sundays(y1, m1, d1, y2, m2, d2)
end

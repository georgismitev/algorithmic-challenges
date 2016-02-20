require 'set'

t, h = gets.strip.split.map(&:to_i)
ticket_sets = SortedSet.new
hotels = Array.new(h + 1) { {} }
hotel_sets = Hash.new { |h, k| h[k] = {} }
hotels_to_pay = h

t.times do |i|
  list = gets.strip.split.map(&:to_i)
  list[1..-1].each do |hotel|
    hotels[hotel][i + 1] = 1
    number_of_tickets = hotels[hotel].size
    hotel_sets[number_of_tickets][hotel] = 1
    hotel_sets[number_of_tickets - 1].delete(hotel) if number_of_tickets > 1
    ticket_sets.add(number_of_tickets)
  end
end

used_tickets = {}

ticket_sets.each do |ticket_total|
  hotel_sets[ticket_total].each_pair do |hotel, _|
    hotels[hotel].each_pair do |ticket, _|
      next if used_tickets[ticket]
      used_tickets[ticket] = 1
    end
  end
end

puts hotels_to_pay - used_tickets.keys.length

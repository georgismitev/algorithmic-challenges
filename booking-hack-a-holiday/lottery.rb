require 'set'

t, h = gets.strip.split.map(&:to_i)
ticket_counts = SortedSet.new
hotels = Array.new(h + 1) { {} }
hotel_sets = Hash.new { |h, k| h[k] = {} }
used_tickets = {}

t.times do |i|
  list = gets.strip.split.map(&:to_i)
  list[1..-1].each do |hotel|
    hotels[hotel][i + 1] = 1
    number_of_tickets = hotels[hotel].size
    hotel_sets[number_of_tickets][hotel] = 1
    hotel_sets[number_of_tickets - 1].delete(hotel) if number_of_tickets > 1
    ticket_counts.add(number_of_tickets)
  end
end

ticket_counts.each do |number_of_tickets|
  hotel_sets[number_of_tickets].each_key do |hotel|
    ticket_matched = false
    hotels[hotel].each_key do |ticket|
      break if ticket_matched
      next if used_tickets[ticket]
      used_tickets[ticket] = hotel
      ticket_matched = true
    end
  end
end

puts h - used_tickets.keys.length

#!/bin/ruby

time = gets.strip

if time[-2..-1] == 'PM'
  if time[0..1].to_i > 12
    time[0..1] = "%.2d" % ((time[0..1].to_i + 12) % 24)
  else
    time[0..1] = (time[0..1].to_i + 12).to_s
  end
elsif time[-2..-1] == 'AM' && time[0..1].to_i >= 11
  time[0..1] = "%.2d" % ((time[0..1].to_i + 12) % 24)
end

puts time[0..-3]

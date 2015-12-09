#!/bin/ruby

n = gets.strip.to_i
puts Array.new(n) { |e| Array.new(n - e - 1) { ' ' }.join + Array.new(e + 1) { "#" }.join }.join("\n")

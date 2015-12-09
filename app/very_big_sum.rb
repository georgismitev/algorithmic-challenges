#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
puts arr.split(' ').map(&:to_i).inject(0) { |sum, e| sum += e }

#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
puts arr.split(' ').map(&:to_i).reduce(:+)

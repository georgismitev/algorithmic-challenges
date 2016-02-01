require 'pry'
require 'dotenv'
Dotenv.load

PRIME = 1038211
BASE = 1000

require 'set'

Dir[File.join(File.dirname(__FILE__), 'lib', '*.rb')].each do |f|
  require f
end

require_relative 'hackerrank'

require 'bigdecimal'
require_relative 'string_parsing'

# User Input
puts 'Enter expression with 2 variables ex(2.3 + 61): '
user_str = STDIN.gets.gsub(/\s+/, '') # removes all white spaces
raise 'No input found!' if user_str.empty?

operation = parse_string(user_str)
puts operation[:operand_l] + operation[:operator] + operation[:operand_r]

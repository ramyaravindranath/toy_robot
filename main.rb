require_relative './lib/command'
require_relative './lib/input'

table = Table.new
command = Command.new(table)
puts 'Welcome to toy robot simulator'
loop do
  puts 'Enter the command (EXIT to quit): '
  usr_input = gets.strip.upcase
  input = Input.new(usr_input)
  break if usr_input == 'EXIT'
  command.execute(input)
end

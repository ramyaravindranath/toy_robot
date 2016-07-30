require_relative './lib/command'

table = Table.new
command = Command.new(table)
puts 'Welcome to toy robot simulator'
loop do
  puts 'Enter the command (EXIT to quit): '
  input = gets.strip.upcase
  break if input == 'EXIT'
  command.execute(input)
end

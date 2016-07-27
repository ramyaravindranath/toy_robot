require_relative './lib/command.rb'
require_relative './lib/table.rb'


table=Table.new
command=Command.new(table)
puts "Do you want to run toy_robot?(Y/N)"
answer = gets.chomp.upcase
if answer!="Y"
  exit
else
  loop do
    puts "Enter the command"
    input = gets.chomp.upcase
    if command.is_valid_input(input)
      execute(input)
    else
      puts "Please enter a valid command"
    end
  end
end

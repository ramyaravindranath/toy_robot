class Main
  loop do
    puts "Do you want to run toy_robot?(Y/N)"
    answer = gets.chomp.upcase
    break if answer != "Y"
  end
end

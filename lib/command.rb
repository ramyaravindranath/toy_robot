class Command

  def is_valid_input(input)
    input.include?("MOVE") || input.include?("RIGHT") || input.include?("LEFT") || input.include?("REPORT")
  end
end

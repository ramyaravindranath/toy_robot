Input = Struct.new(:input) do
  def a_place_command?
    input.start_with?('PLACE')
  end

  def a_move_command?
    input == 'MOVE'
  end

  def a_left_command?
    input == 'LEFT'
  end

  def a_right_command?
    input == 'RIGHT'
  end

  def a_report_command?
    input == 'REPORT'
  end
end

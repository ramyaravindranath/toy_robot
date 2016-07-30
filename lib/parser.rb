require_relative './position'

# A module to parse place command
module Parser
  attr_reader :x
  attr_reader :y
  attr_reader :direction
  attr_reader :args
  attr_reader :position

  def self.parse(input)
    _command, args = input.split(/\s+/, 2)
    unless args.nil?
      position = args.split(',')
      validate(position)
    end
  end

  def self.validate(position)
    x = position[0].to_i if /\A\d+\Z/ =~ position[0]
    y = position[1].to_i if /\A\d+\Z/ =~ position[1]
    direction = position[2] if position[2] == 'EAST' || position[2] == 'WEST' ||
                               position[2] == 'NORTH' || position[2] == 'SOUTH'
    Position.new(x, y, direction) if x && y && direction
  end
end

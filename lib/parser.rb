require_relative './position'

# A module to parse place command
module Parser
  def self.parse(input)
    _command, args = input.split(/\s+/, 2)
    unless args.nil?
      x, y, dir = args.split(',')
      validate(x.to_i, y.to_i, dir)
    end
  end

  def self.validate(x, y, dir)
    Position.new(x, y, dir) if x != /\A\d+\Z/ && y != /\A\d+\Z/ &&
                               %w(EAST WEST NORTH SOUTH).include?(dir)
  end
end

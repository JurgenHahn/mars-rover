class Rover

  attr_accessor :x_coordinate, :y_coordinate, :dir

  def initialize
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @dir = dir
    read
  end

end

  def read
    puts "How large is the plateau size?"
    plateau_size = gets.chomp

    puts "Where is Rover 1 starting?"
    starting_position = gets.split(" ")

    @x_coordinate = starting_position[0].to_i
    @y_coordinate = starting_position[1].to_i
    @dir = starting_position[2]

    puts "Please give me directions to the drill site."
    instructions = gets.split(//)

    instructions.each do |instruction|
      case
        when instruction == "M" then move
        when instruction == "L" then turn(instruction)
        when instruction == "R" then turn(instruction)
      end
    end

  end

  def move
    case
      when @dir == "N" then @y_coordinate += 1
      when @dir == "E" then @x_coordinate += 1
      when @dir == "S" then @y_coordinate -= 1
      when @dir == "W" then @x_coordinate -= 1
    end
  end

  def turn(instruction)
    case instruction
      when @dir == "N" && instruction == "L" then @dir = "W"
      when @dir == "N" && instruction == "R" then @dir = "E"
      when @dir == "E" && instruction == "L" then @dir = "N"
      when @dir == "E" && instruction == "R" then @dir = "S"
      when @dir == "S" && instruction == "L" then @dir = "E"
      when @dir == "S" && instruction == "R" then @dir = "W"
      when @dir == "W" && instruction == "L" then @dir = "S"
      when @dir == "W" && instruction == "R" then @dir = "N"
    end
  end

  # 1 = Rover.new

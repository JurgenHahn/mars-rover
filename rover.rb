class Plateau
  def initialize(x_axis, y_axis)
    @x_axis = x_axis
    @y_axis = y_axis
  end
end

class Armadillo
  attr_accessor :x_coordinate, :y_coordinate, :dir

  def initialize(x_coordinate, y_coordinate, dir)
    @x_coordinate = x_coordinate.to_i
    @y_coordinate = y_coordinate.to_i
    @dir = dir
    read
  end
end

  def read
    puts "Please enter the Armadillo's instructions."
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
    case
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

puts ""
puts "The United States government has just asked you to save the world. You will be joining two groups of blue collar deep-core drillers aboard the
shuttles Freedom and Independance and travel to an asteroid on a collision course with Earth."
puts ""
puts "Each shuttle contains an Armadillo, a refitted mobile driller. The landing sites and drill sites are situated at different positions on the asteroid's
plateau. You are tasked with landing each shuttle and providing each Armadillo with directions to the drill sites. The Earth is depending on you.
God Speed."

puts ""
puts "Please enter the dimensions of the asteroid's plateau."
plateau = gets.split(" ")
Asteroid = Plateau.new(plateau[0], plateau[1])


puts ""
puts "Please enter Freedom's landing coordinates."
starting_position = gets.split(" ")
Freedom = Armadillo.new(starting_position[0], starting_position[1], starting_position[2])

puts ""
puts "Please enter Independance's landing coordinates."
starting_position = gets.split(" ")
Independance = Armadillo.new(starting_position[0], starting_position[1], starting_position[2])


puts ""
puts " Congratulations! You have directed Freedom to the drill site at #{Freedom.x_coordinate} #{Freedom.y_coordinate} #{Freedom.dir} and
Independance to the drill site at #{Independance.x_coordinate} #{Independance.y_coordinate} #{Independance.dir}."

puts ""
puts ""
puts "                      https://www.youtube.com/watch?v=JkK8g6FMEXE"
puts ""
puts ""

class Rover

  def initialize(x_coordinate, y_coordinate, dir)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @dir = dir
  end

  def read

  end

  def move

    case direction
    when Rover dir == N
      y_coordinate += 1
    when Rover dir == E
      x_coordinate += 1
    when Rover dir == S
      y_coordinate -= 1
    when Rover dir == W
      x_coordinate -= 1
    end

  end

  def turn

    case turning
    when Rover dir == N
      if instruction == L
        dir = W
      else
        dir = E
      end
    when Rover dir == E
      if instruction == L
        dir = N
      else
        dir = S
      end
    when Rover dir == S
      if instruction == L
        dir = E
      else
        dir = W
      end
    when Rover dir == W
      if instruction == L
        dir = S
      else
        dir = N
      end
  end


end

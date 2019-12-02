class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end
  
    def kind
      valid?
      if side_one == side_two && side_two == side_three
      :equilateral
        elsif
          side_one == side_two || side_one == side_three || side_two == side_three
      :isosceles
        else
      :scalene
      end
    end
    
    def valid?
        if side_one + side_two > side_three || side_two + side_three > side_one || side_one + side_three > side_two
        true
        else
          false
            raise TriangleError
            puts "The angles for this triangle are invalid."
        end
      end
        class
        TriangleError < StandardError
        end
  end


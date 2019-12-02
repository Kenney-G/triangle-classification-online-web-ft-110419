class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end
  
    def kind
      if side_one == side_two && side_three
      :equilateral
        elsif
        side_one != side_two || side_three 
        :scalene
          elsif
          side_one == side_two || side_two == side_three || side_one == side_three
          :isosceles
      end
    end
    
    def valid?
      if side_one + side_two > side_three || side_two + side_three > side_one || side_one + side_three > side_two
      end
        if side_one > 0 && side_two > 0 && side_three > 0
        end
      if valid? == false
        begin
          raise TriangleError
          puts "The angles for this triangle are invalid."
        end
      end
    end
    end
        class TriangleError < StandardError
end

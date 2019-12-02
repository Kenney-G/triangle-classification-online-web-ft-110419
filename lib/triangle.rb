class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end
  
    def kind
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
        elsif
          side_one > 1 && side_two > 1 && side_three > 1
          else
          false
      end
    end
      
      def valid_triangle
          if valid? == false
          raise TriangleError
          puts "The angles for this triangle are invalid."
       end
    
    
    

        class
        TriangleError < StandardError
        end
end

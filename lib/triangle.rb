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
     check_one = [(side_one + side_two > side_three), (side_one + side_three > side_two), (side_two +side_three > side_one)]
    [side_one, side_two, side_three].each do |side|
      check_one << false if side <= 0
    raise TriangleError if check_one.include?(false)
        end
    end
        class
        TriangleError < StandardError
        end
  end


class Triangle
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(:side_one, :side_two, :side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end
    def kind
      :equilateral
      :isosceles
      :scalene
    end
    
end

class Car
  attr_accessor :make, :model, :year, :color

  def initialize(make, model, year, color)
    @make = make
    @model = model
    @year = year
    @color = color
  end

  def to_s
    "#{@make} #{@model} #{@year} #{@color}"
  end
end

class Building
  attr_reader :name, :width, :length

  def initialize(name, width, length)
    @name = name
    @width = width
    @length = length
  end

  def floor_area
    @width * @length
  end
end


class House < Building
end

my_building = Building.new("random building", 45, 50)
p my_building
p my_building.name
p my_building.floor_area

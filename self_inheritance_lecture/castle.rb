require_relative "house"
require_relative "butler"

class Castle < Building
  attr_accessor :butler, :ruler

  def initialize(name, width, length, ruler)
    super(name, width, length)
    @ruler = ruler
    # we are creating a bulter instance passing as an argument an instance of Castle
    @butler = Butler.new(self)
  end

  def ownership_details
    "#{@name} is ruled by #{ruler_name}"
  end

  def ruler_name
    @ruler.capitalize
  end

  def has_a_butler?
    @butler != nil
  end

  def floor_area
    super + 300
  end

  def self.categories
    return ["eric", "ma"]
  end

  def type_of_owner
    if @length > 50
      "this #{self.capitalized_name} is a skycraper"
    else
      "this #{self.capitalized_name} is nothing"
    end
  end

  def capitalized_name
    # @name.capitalize
    self.name.capitalize
  end
end

# my_castle = Castle.new("empire", 60, 80)
# p my_castle.name
# p my_castle.width
# p my_castle.floor_area

# p my_castle.has_a_butler?
# my_castle.butler = "Jhon"
# p my_castle.has_a_butler?
# p Castle.categories.join(",")
# p my_castle.type_of_owner

my_castle = Castle.new("the sultab", 8000, 5000, "Eric")
p my_castle.butler
p my_castle.butler.clean_castle

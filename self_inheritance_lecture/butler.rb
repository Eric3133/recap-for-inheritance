class Butler
  def initialize(castle)
    @castle = castle #@castle stores an instance of Castle
  end

  def clean_castle
    puts "#{@castle.name} is cleaned"
  end
end

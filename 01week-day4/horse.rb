class Horse

  attr_accessor :name, :position, :horses

  def initialize(name)
    @name = name
    @position = 0
    @horses = []
  end

  def move_forward
    @position += rand(1..4)
  end
end

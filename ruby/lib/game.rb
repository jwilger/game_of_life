class Game
  attr_accessor :cells

  def initialize
    self.cells = []
    1000.times do
      cells << Cell.new
    end
  end

  class Cell
  end
end

require 'spec_helper'
require 'game'

describe Game do
  it 'has a game board with 1000 cells' do
    expect(subject.cells.size).to eq 1000
  end

  it 'has a game board where each cell is an instance of Cell' do
    expect(subject.cells.all? { |c| c.kind_of?(Game::Cell) }).to be true
  end

  it 'has a cell for each coordintate in a 100x100 square' do
    100.times do |x|
      100.times do |y|
        expect(subject.cell_at(x,y)).to eq Cell.new(x: x, y: y)
      end
    end
  end
end

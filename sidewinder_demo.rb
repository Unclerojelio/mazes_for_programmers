require 'grid'
require 'sidewinder'

grid = Grid.new(10,10)

Sidewinder.on(grid)

puts grid

deadends = grid.deadends
puts "#{deadends.count} dead-ends"

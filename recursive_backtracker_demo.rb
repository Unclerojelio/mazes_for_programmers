require 'recursive_backtracker'
require 'grid'

grid = Grid.new(20, 20)
RecursiveBacktracker.on(grid)

filename = "recursive_backtracker.png"
grid.to_png.save(filename)
puts "saved to #{filename}"

puts grid

deadends = grid.deadends
tees = grid.tees
four_ways = grid.four_ways

puts "#{deadends.count} dead-ends"
puts "#{tees.count} tees"
puts "#{four_ways.count} four_ways"
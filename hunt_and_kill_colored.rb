require 'colored_grid'
require 'hunt_and_kill'

10.times do |n|
	grid = ColoredGrid.new(20, 20)
	HuntAndKill.on(grid)

	middle = grid[grid.rows / 2, grid.columns / 2]
	grid.distances = middle.distances

	filename = "hunt_and_kill_%02d.png" % n
	grid.to_png.save(filename)
	puts "saved to #{filename}"
end
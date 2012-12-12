#!/usr/bin/env ruby
require 'rectangle'
require 'square'

rectangle = Rectangle.new(4, 5, 0, 0)
puts rectangle.to_s, "\n"
rectangle.rotate!; puts "rotate"
puts rectangle.to_s, "\n"
rectangle.augment_width_by!(2); puts "augment width by 2"
puts rectangle.to_s, "\n"

puts "###########################################################"

square = Square.new(4, 0, 0)
puts square.to_s, "\n"
square.rotate!; puts "rotate"
puts square.to_s, "\n"
square.augment_side_by!(2); puts "augment side by 2"
puts square.to_s, "\n"
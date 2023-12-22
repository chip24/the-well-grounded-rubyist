p /([A-Za-z]+),[A-Za-z]+,(Mrs?\.)/.match("Peel,Emma,Mrs.,talented amateur")
puts $1
puts $2
puts "Dear #{$2} #{$1},"
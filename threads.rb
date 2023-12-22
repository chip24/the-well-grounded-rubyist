t = Thread.new do
    puts "Starting the thread"
    sleep 1
    puts "At the end of the thread"
end
puts "Outside the thread"
t.join

t = Thread.new do
    puts "[Starting thread]"
    Thread.stop
    puts "[Resuming thread]"
end
sleep 1
puts "Status of thread: #{t.status}"
puts "Is thread stopped? #{t.stop?}"
puts "Is thread alive? #{t.alive?}"
puts
puts "Waking up tread and joining it..."
t.wakeup
t.join
puts
puts "Is thread alive? #{t.alive?}"
puts "Inspect string for thread: #{t.inspect}"

f = Fiber.new do
    puts "Hi."
    Fiber.yield
    puts "Nice day."
    Fiber.yield
    puts "Bye!"
end
f.resume
puts "Back to the fiber:"
f.resume
puts "One last message from the fiber:"
f.resume
puts "That's all!"

/(abc)/.match("abc")
t = Thread.new do
    /(def)/.match("def")
    puts "$1 in thread: #{$1}"
end.join
puts "$1 outside the thread: #{$1}"

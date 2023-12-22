
def divide_by_user_input
    print "Enter a number: "
    n = gets.to_i
    #n = 0
    begin
        result = 100 / n
    rescue ZeroDivisionError
        puts "Your number didn't work. Was it zero???"
        exit
    end

    puts "100/#{n} is #{result}."
end

#divide_by_user_input

=begin
def open_user_file
    print "File to open: "
    filename = gets.chomp
    begin 
    fh = File.open(filename)
    rescue
        puts "Couldn't open your file!"
        return
    end
    yield fh
    fh.close
    
end
=end

class Roster
    attr_accessor :players
end

class Player
    attr_accessor :name, :position
    def initialize(name, position)
        @name = name
        @position = position
    end
end

moore = Player.new("Maya Moore", "Forward")
taurasi = Player.new("Diana Taurasi", "Guard")
tourney_roster1 = Roster.new
tourney_roster1.players = [moore, taurasi]


if tourney_roster1.players.first.position == "Forward"
    puts "Forward: #{tourney_roster1.players.first.name}"
end

tourney_roster2 = Roster.new

if tourney_roster2.players&.first&.position == "Forward"
    puts "Forward: #{tourney_roster1.players.first.name}"
end

def fussy_method(x)
    raise ArgumentError, "I need a number under 10" unless x < 10
end

#fussy_method(20)
fussy_method(9)

begin
    fussy_method(20)
rescue ArgumentError => e
    puts "That was not an acceptable number!"
    puts "Here's the backtrace for this exception:"
    puts e.backtrace
    puts "And here's the exception object's message:"
    puts e.message
end

def open_user_file(filename)
    print "File to open: "
    filename = gets.chomp
    begin
        fh = File.open(filename)
    rescue => e
        logfile.puts("User tried to open #{filename}, #{Time.now}")
        logfile.puts("Exception: #{e.message}")
        raise
    end
end

def line_from_file(filename, substring)
    fh = File.open(filename)
    begin
        line = fh.gets
        raise ArgumentError unless line.include?(substring)
    rescue ArgumentError
        puts "Invalid line!"
        raise
    ensure
        fh.close
    end
    return line
end

class InvalidLineError < StandardError
end
def line_from_file(filename, substring)
    fh = File.open(filename)
    line = fh.gets
    raise InvalidLineError unless line.include?(substring)
    return line
    rescue InvalidLineError
        puts "Invalid line!"
        raise
    ensure
        fh.close
end

module TextHandler
    class InvalidLineError < StandardError
    end
end
def line_from_file(filename, substring)
    fh = File.open(filename)
    line = fh.gets
    raise TextHandler::InvlaidLineError unless line.include?(substring)
end





    







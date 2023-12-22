require 'open-uri'
#rubypage = open("http://rubycentral.org")
#puts rubypage.gets

URI.open("http//www.ruby-lang.org/") {|f|
f.each_line {|line| p line}
}
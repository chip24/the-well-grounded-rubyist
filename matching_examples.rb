string = "My phone number is (123) 555-1234."
phone_re = %r{\((\d{3})\)\s+(\d{3})-(\d{4})}
m = phone_re.match(string)
unless m
    puts "There was no match-sorry."
    exit
end
p m
puts m
puts m[1]
puts m[2]
puts m[3]
print "The whole string we started with: "
puts m.string
print "The entire part of the string that matched: "
puts m[0]
puts "The three captures: "
3.times do |index|
    puts "Capture ##{index + 1}: #{m.captures[index]}"
end
puts "Here's another way to get at the first capture:"
print "Capture #1: "
puts m[1]

print "The part of the string before the part that matched was: "
puts m.pre_match
print "The part of the string after the part that matched was: "
puts m.post_match
print "The second capture began at character: "
puts m.begin(2)
print "The third capture ended at character: "
puts m.end(3)

p /((a)((b)c))/.match("abc")

re = %r{(?<first>\w+)\s+((?<middle>\w\.)\s+)(?<last>\w+)}
m = re.match("David A. Black")
p m
p m[:first]
p m[1]
p m.named_captures
#re = /(?<first>\w{3})\s+((?<last>\w{3}),?\s?)(?<suffix>\w+\.?)?)/
#reg = /(?<first>\w{3})\s+((?<last>\w{3}),?\s?)(?<suffix>\w+\.?)?)/
#reg.match "Joe Leo III"
#re = /(?<first>\w{3})\s+((?<last>\w{3}),?\s?)(?<suffix>\w+\.?)?)/
#=> /(?<first>\w{3})\s+((?<last>\w{3}),?\s?)(?<suffix>\w+\.?)?)/
#p re.match "Joe Leo III"
#<MatchData "Joe Leo III", first:"Joe" last:"Leo" suffix:"III">
#m = re.match "Joe Leo, Jr."
#<MatchData "Joe Leo, Jr.", first:"Joe" last:"Leo" suffix:"Jr.">
#p m.named_captures
#=> {"first"=>"Joe", "last"=>"Leo", "suffix"=>"Jr."}
#p m = re.match "Joe Leo"
#<MatchData "Joe Leo", first:"Joe" last:"Leo" suffix:nil>
#p m[:suffix]

my_re = %r{(?<first>\w+)\s+((?<middle>\w\.)\s+)(?<last>\w+)\s+(?<suffix>\w+.)}
my = my_re.match("Marshall G. Morgan Jr.")
p my
p my.named_captures
n = my_re.match("Chip Morgan Jr.")
p n

my_reg = /(?<first>\w+)\s+(?<middle>\w+)?\s+(?<last>\w+)\s+(?<suffix>\w+\.?)/

my_regex = /(?<first>\w+)\s+(?<middle>\w+)\s+?(?<last>\w+)\s+(?<suffix>\w+\.)?/

mgmj = my_reg.match("Marshall Gilbert Morgan Jr.")
p mgmj
mgm = my_regex.match("Marshall Gilbert Morgan")
p mgm
cm = my_regex.match("Chip Morgan")
p cm

name_re = /^(\w+)\s+(\w+)?\s+(\w+)\s*(\w+)?/
mg = name_re.match("Marshall Gilbert Morgan Jr.")
p mg
cm = name_re.match("Chip Morgan")
p cm

new_reg = /(?<first>\w+)\s+(?<middle>\w+)?\s+(?<last>\w+)(?<suffix>\w+\.?)/

c = new_reg.match("Chip Morgan")
p c

opt_mid = /[a-zA-Z]+(?:\s[a-zA-Z]+)+\s?[a-zA-Z]+(?:\s?[a-zA-Z]+.)/
mgm = opt_mid.match("Marshall Gilbert Morgan")
p mgm
mm = opt_mid.match("Marshall Morgan")
p mm
mgmj = opt_mid.match("Marshall Gilbert Morgan Jr.")
p mgmj

#opt_mid_cap = /(?<first>[a-zA-Z]+)(?:\s+(?(<middle>[a-zA-Z]+))+\s?(?<last>[a-zA-Z]+(?:\s?+(?<suffix>\s?[a-zA-Z]+.)/
#mgm = opt_mid_cap.match("Marshall Gilbert Morgan")
#p mgm

will_it_work = /\w+\s+(?:\w+\s+)?\w+(?:\s+\w+\.?)/
mm = will_it_work.match("Marshall Morgan")
p mm
mgm = will_it_work.match("Marshall Gilbert Morgan")
p mgm
mgmj = will_it_work.match("Marshall Gilbert Morgan Jr.")
p mgmj

re_cap = /(?<first>[a-zA-Z]+)\s+(?<middle>[a-zA-Z]+)?\s+(?<last>[a-zA-Z]+)(?<suffix>[a-zA-Z]+.)?/
mgmj = re_cap.match("Marshall Gilbert Morgan Jr.")
p mgmj
mgm = re_cap.match("Marshall Gilbert Morgan")
p mgm
mm = re_cap.match("Marshall Morgan")
p mm

# This one FINALLY works!
bing = /(?<first>[a-zA-Z]+)\s(?:(?<middle>[a-zA-Z]+)\s)?(?<last>[a-zA-Z]+)(?:\s(?<suffix>[a-zA-Z]+\.))?/

fmls = "Marshall Gilbert Morgan Jr."
fml = "Marshall Gilbert Morgan"
fl = "Marshall Morgan"
#except this one doesn't work
fls = "Marshall Morgan Jr."

p mgmj = bing.match(fmls)
p mgm = bing.match(fml)
p mm = bing.match(fl)
p mmj = bing.match(fls)

p /(\d+?)/.match("Digits-R-Us 2345")[1]

string = "abc!def!ghi!"
p /.+?!/.match(string)[0]

p /(\d+5)/.match("Digits-R-Us 2345")
p /(\d+)(5)/.match("Digits-R-Us 2345")
p /(\d)(5)/.match("Digits-R-Us 2345")

p /([A-Z]){5}/.match("David BLACK")
p /([A-Z]{5})/.match("David BLACK")

comment_regexp = /^\s*#/
p comment_regexp.match("  # Pure comment!")
p comment_regexp.match("  x = 1 # Code plus comment!")

str = "123 456. 789"
m = /\d+(?=\.)/.match(str)
p m

re = /(?<=David )BLACK/

str = "abc def ghi"
m = /(abc) (?:def) (ghi)/.match(str)
p m

re = /(?<first>a)?(?(<first>)b|c)/
p re.match("ab")
p re.match("a")
p re.match("c")

str = "This (including\nwhat's in parens\n) takes up three lines."
m = /\(.*?\)/m.match(str)
p m 

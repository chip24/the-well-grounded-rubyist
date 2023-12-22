coll = File.open("collections.txt")
coll_data = coll.read
puts coll_data

#comps = /^([A-Z]\-*[a-z]*)/
comps = /^(\b[A-Z][a-z]*\-*[A-Z]*[a-z]*)/
la_comps  = /^(\b[A-Z][a-z]*\-*[A-Z]*[a-z]*)(?=.+\$)/

nums = /\$\d+\,\d+/
caps = comps.match(coll_data)
all_matches = coll_data.scan(comps)
p caps
p all_matches

all_nums = coll_data.scan(nums)
p all_nums

# fix this on 11-22 to remove dollars signs probably with gsub
#all_ints = all_nums.map(&:to_i)
#p all_ints
all_ints = all_nums.map { |e| e.delete_prefix("$").delete(',').to_i }
p "all_ints equals: #{all_ints}."

la_caps = la_comps.match(coll_data)
all_la_matches = coll_data.scan(la_comps)
p la_caps
p all_la_matches
flat_all_matches = all_la_matches.flatten
p flat_all_matches

comp_dollars_hash = Hash[flat_all_matches.zip(all_ints)]

p comp_dollars_hash



#la_comps_and_dollars = /^([A-Z][a-z]*\-*[A-Z]*[a-z]*)(?=.+\$)/
#all_comps_and_dollars = coll_data.scan(la_comps_and_dollars)
#p "This is all_comps_and_dollars: #{all_comps_and_dollars}"

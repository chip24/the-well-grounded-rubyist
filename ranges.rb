require 'set'

new_england = ["Connecticut", "Maine", "Massachusetts", "New Hampshire", "Rhode Island", "Vermont"]

state_set = Set.new(new_england)
p state_set

names = ["David", "Yukihiro", "Chad", "Amy"]

names_set = Set.new(names) {|name| name.upcase }

p names_set

tri_state = Set.new(["New Jersey", "New York"])
p tri_state

tri_state << "Connecticut"

p tri_state

#tri_state << "Pennsylvania"
#p tri_state

#tri_state.delete("Connecticut")
#p tri_state

p state_set - tri_state
p state_set + tri_state
p state_set & tri_state
p state_set | tri_state
p state_set ^ tri_state

p tri_state.object_id
tri_state.merge(["Delaware"])
p tri_state
p tri_state.object_id

s = Set.new([1,2,3])
p s
s.merge({"New Jersey" => "NJ", "Maine" => "ME"})
p s

state_hash = {"Maine" => "ME", "Vermont" => "VT"}

state_set.merge(state_hash.keys)
p state_set

small_states = Set.new(["Connecticut", "Delaware", "Rhode Island"])
tiny_states = Set.new(["Delaware", "Rhode Island"])
p tiny_states.subset?(small_states)
p small_states.superset?(tiny_states)
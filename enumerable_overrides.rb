overrides = {}
enum_classes = ObjectSpace.each_object(Class).select do |c|
    c.ancestors.include?(Enumerable) && c.name
end
enum_classes.sort_by {|c| c.name}.each do |c|
    overrides[c] = c.instance_methods(false) &
    Enumerable.instance_methods(false)
end
overrides.delete_if {|c, methods| methods.empty? }
overrides.each do |c, methods|
    puts "Class #{c} overrides: #{methods.sort.join(", ")}"
end

class C
end
c = C.new
class << c
    
    def x
    end
    def y
    end
    def z
    end
    protected :y
    private :z
    p private_instance_methods(false)
end
p c.singleton_methods.sort

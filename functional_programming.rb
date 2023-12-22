def sum_of_parts(arr)
    #sum = 0
    #arr.size.times {sum = sum + arr.shift }
    #sum
    arr.reduce(:+)
end

my_array = [1,3,5]
p sum_of_parts(my_array)

p [3,5,7,9].map {|i| i * 5 }

class Grade
    attr_reader :letter

    def calculate_grade(scores)
        case scores.sum / scores.size
        when 90..100
            @letter = "A"
        when 80...90
            @letter = "B"
        when 70...80
            @letter = "C"
        when 60...70
            @letter = "D"
        else
            @letter = "F"
        end
    end
end

class ReportCard
    def initialize(name, physics_grade, chemistry_grade, biology_grade)
        @name = name
        @physics_grade = physics_grade
        @chemistry_grade = chemistry_grade
        @biology_grade = biology_grade
    end

    def issue
        puts "Report Card for #{@name}"
        puts
        puts "Physics: #{@physics_grade.letter}"
        puts "Chemistry: #{@chemistry_grade.letter}"
        puts "Biology: #{@biology_grade.letter}"
    end
end

physics_grade = Grade.new
physics_grade.calculate_grade([78,92,92])
chemistry_grade = Grade.new
chemistry_grade.calculate_grade([90,80,88])
biology_grade = Grade.new
biology_grade.calculate_grade([99,90,98])

rc = ReportCard.new("Joe", physics_grade, chemistry_grade, biology_grade)
rc.issue



class Grade
    def self.calculate(scores)
        case scores.sum / scores.size
        when 90..100
            "A"
        when 80...90
            "B"
        when 70...80
            "C"
        when 60...70
            "D"
        else
            "F"
        end
    end
end

class ReportCard
    def self.issue(name, physics_grade, chemistry_grade, biology_grade)
        puts "Report Card for #{name}"
        puts
        puts "Physics: #{physics_grade}"
        puts "Chemistry: #{chemistry_grade}"
        puts "Biology: #{biology_grade}"
    end
end

physics_grade = Grade.calculate([78,92,90])
chemistry_grade = Grade.calculate([90,80,88])
biology_grade = Grade.calculate([99,90,98])
ReportCard.issue("Joe", physics_grade, chemistry_grade, biology_grade)

